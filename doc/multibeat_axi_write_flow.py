# SPDX-FileCopyrightText: 2026 Glen Lowe
# SPDX-License-Identifier: Apache-2.0
from PIL import Image, ImageDraw, ImageFont

W, H = 2400, 1850
img = Image.new('RGB', (W, H), 'white')
d = ImageDraw.Draw(img)

try:
    font_title = ImageFont.truetype('/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf', 52)
    font_hdr = ImageFont.truetype('/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf', 29)
    font_txt = ImageFont.truetype('/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf', 23)
except Exception:
    font_title = ImageFont.load_default()
    font_hdr = ImageFont.load_default()
    font_txt = ImageFont.load_default()


def box(x1, y1, x2, y2, title, lines, fill='#eef4ff', outline='#1f3b73'):
    d.rounded_rectangle((x1, y1, x2, y2), radius=18, fill=fill, outline=outline, width=3)
    d.text((x1 + 18, y1 + 12), title, font=font_hdr, fill='#102347')
    y = y1 + 56
    for ln in lines:
        d.text((x1 + 22, y), ln, font=font_txt, fill='#1c1c1c')
        y += 33


def arrow(x1, y1, x2, y2, color='#2c4f8f', w=5):
    d.line((x1, y1, x2, y2), fill=color, width=w)
    import math
    ang = math.atan2(y2 - y1, x2 - x1)
    ah = 18
    aw = 10
    p1 = (x2, y2)
    p2 = (
        x2 - ah * math.cos(ang) + aw * math.sin(ang),
        y2 - ah * math.sin(ang) - aw * math.cos(ang),
    )
    p3 = (
        x2 - ah * math.cos(ang) - aw * math.sin(ang),
        y2 - ah * math.sin(ang) + aw * math.cos(ang),
    )
    d.polygon([p1, p2, p3], fill=color)


d.text((70, 35), 'Multi-Beat AXI-Full Write Processing Flow (Current RTL)', font=font_title, fill='#0d2552')

lanes = [
    (70, 120, 760, 170, 'AXI Clock Domain (50 MHz)', '#eaf2ff'),
    (830, 120, 1540, 170, 'CDC FIFOs', '#eefbea'),
    (1610, 120, 2330, 170, 'HyperBus Clock Domain (200 MHz)', '#fff4ea'),
]
for x1, y1, x2, y2, t, c in lanes:
    d.rounded_rectangle((x1, y1, x2, y2), radius=14, fill=c, outline='#444', width=2)
    d.text((x1 + 18, y1 + 12), t, font=font_hdr, fill='#222')

box(
    90, 220, 740, 405, '1) AW Arbitration + Latch',
    [
        'Accept AW only for INCR, 32-bit, AWLEN <= 31, and !cmd_fifo_full.',
        'When AW and AR arrive same cycle, write path is prioritized.',
        'Latch aw_addr_q/aw_len_q, set aw_pending=1.',
    ],
    fill='#eaf2ff'
)

box(
    90, 445, 740, 760, '2) W Beat Acceptance',
    [
        'WREADY = aw_pending && !wr_fifo_full && (w_beats_rcvd <= aw_len_q).',
        'Every W handshake pushes {WSTRB,WDATA} to u_wr_fifo (FWFT).',
        'Final accepted beat attempts one cmd push to u_cmd_fifo.',
        'If cmd fifo full at final beat: defer command until space opens.',
        'WR FIFO push timing is unchanged by early/late cmd enqueue.',
    ],
    fill='#eaf2ff'
)

box(
    90, 800, 740, 975, '3) B Response',
    [
        'HB completion token returns via u_b_fifo.',
        'AXI drives BVALID/BRESP=OKAY on token pop.',
    ],
    fill='#eaf2ff'
)

box(
    860, 260, 1510, 470, 'u_wr_fifo (FWFT, async, 36-bit)',
    [
        'Payload: {WSTRB[3:0], WDATA[31:0]}',
        'AXI writes on W handshake; HB reads for serializer.',
    ],
    fill='#eefbea', outline='#2d6a2d'
)

box(
    860, 520, 1510, 760, 'u_cmd_fifo (STD, async, 75-bit)',
    [
        'One command per AXI burst:',
        'is_write=1, is_reg=0, byte address, beat_count.',
        'AXI writes only after all W beats are accepted.',
    ],
    fill='#eefbea', outline='#2d6a2d'
)

box(
    860, 810, 1510, 980, 'u_b_fifo (STD, async)',
    [
        'Completion token from HB domain to AXI B channel.',
    ],
    fill='#eefbea', outline='#2d6a2d'
)

box(
    1640, 210, 2300, 430, '4) HB Command + CA Phase',
    [
        'Pop write cmd, assert CS#.',
        'Hold CS# for 2 HB clocks before enabling CK.',
        'Clock out 6 CA bytes (CA_PRIME + CA).',
        'After CA cycle #2, sample RWDS to select 1x/2x latency.',
    ],
    fill='#fff4ea', outline='#8a4b08'
)

box(
    1640, 470, 2300, 760, '5) HB_FULL_LAT + Write Prime',
    [
        'Apply latency with ODDRE1 TX compensation.',
        'Wait 2 extra clocks post-CA before driving RWDS on writes.',
        'Prefetch from u_wr_fifo into 2-word ping-pong buffers',
        '(wrbuf + wrnext).',
        'Enter HB_WRITE only when enough data is primed:',
        'single-beat needs wrbuf, multi-beat needs wrbuf+wrnext.',
    ],
    fill='#fff4ea', outline='#8a4b08'
)

box(
    1640, 800, 2300, 1140, '6) HB_WRITE Streaming (No Bubbles)',
    [
        'Emit 16-bit words continuously: low half then high half per AXI beat.',
        'RWDS byte masks are active-low and aligned to emitted bytes:',
        'RWDS <= ~WSTRB lane bits for each halfword.',
        'While emitting wrbuf, prefetch next beat into wrnext as needed.',
        'After final emitted word, stop CK immediately and start term hold.',
    ],
    fill='#fff4ea', outline='#8a4b08'
)

box(
    1640, 1170, 2300, 1365, '7) Termination + Completion',
    [
        'Keep CS# asserted during configured post-CK hold.',
        'Then deassert CS# and push completion token to b_fifo.',
    ],
    fill='#fff4ea', outline='#8a4b08'
)

arrow(415, 405, 415, 445)
arrow(415, 760, 415, 800)

arrow(740, 590, 860, 360)
arrow(740, 660, 860, 620)
arrow(740, 880, 860, 895)

arrow(1510, 620, 1640, 300)
arrow(1510, 360, 1640, 570)
arrow(1510, 895, 1640, 1260)

arrow(1970, 430, 1970, 470)
arrow(1970, 760, 1970, 800)
arrow(1970, 1140, 1970, 1170)

d.rounded_rectangle((70, 1510, 2330, 1760), radius=16, fill='#f7f7f7', outline='#666', width=2)
notes = [
    'Notes:',
    '- AXI-full read and write command issue are mutually exclusive; writes are favored on simultaneous request.',
    '- For AXI-full bursts, HB write path assumes WR FIFO already contains the burst payload before command pops.',
    '- This reflects current controller partitioning: PHY and FIFOs are in separate RTL files.',
]
y = 1540
for i, ln in enumerate(notes):
    d.text((95, y), ln, font=(font_hdr if i == 0 else font_txt), fill='#222')
    y += 40

out = '/raid/work/hyperbus_ai3/doc/multibeat_axi_write_flow.jpg'
img.save(out, 'JPEG', quality=95)
print(out)
