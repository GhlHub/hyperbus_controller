# SPDX-FileCopyrightText: 2026 Glen Lowe
# SPDX-License-Identifier: Apache-2.0
from PIL import Image, ImageDraw, ImageFont

W, H = 2400, 1800
img = Image.new('RGB', (W, H), 'white')
d = ImageDraw.Draw(img)

try:
    font_title = ImageFont.truetype('/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf', 54)
    font_hdr = ImageFont.truetype('/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf', 30)
    font_txt = ImageFont.truetype('/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf', 24)
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
        y += 34


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


d_title = 'Multi-Beat AXI-Full Read Processing Flow (Current Design)'
d.text((70, 35), d_title, font=font_title, fill='#0d2552')

lanes = [
    (70, 120, 760, 170, 'AXI Clock Domain (50 MHz)', '#eaf2ff'),
    (830, 120, 1540, 170, 'CDC FIFOs', '#eefbea'),
    (1610, 120, 2330, 170, 'HyperBus Clock Domain (200 MHz)', '#fff4ea'),
]
for x1, y1, x2, y2, t, c in lanes:
    d.rounded_rectangle((x1, y1, x2, y2), radius=14, fill=c, outline='#444', width=2)
    d.text((x1 + 18, y1 + 12), t, font=font_hdr, fill='#222')

box(
    90,
    230,
    740,
    400,
    '1) AR Handshake',
    [
        'Accept AR when no read/write conflict and cmd fifo can accept.',
        'Latch ar_addr_q/ar_len_q and enqueue one read command.',
    ],
    fill='#eaf2ff',
)

box(
    90,
    450,
    740,
    760,
    '2) R-Channel Return Loop',
    [
        'Use rd_active + rd_beats_left to track burst completion.',
        'Pop/read rd_fifo data when available and RREADY allows transfer.',
        'Drive RVALID/RDATA/RLAST until all beats complete.',
        'Single-beat and multi-beat use same channel-level protocol.',
    ],
    fill='#eaf2ff',
)

box(
    90,
    810,
    740,
    980,
    '3) Read Completion',
    [
        'On final beat handshake: clear rd_active and return to idle.',
    ],
    fill='#eaf2ff',
)

box(
    860,
    300,
    1510,
    500,
    'u_cmd_fifo (STD, async)',
    [
        'Carries read command metadata:',
        'is_write=0, is_reg, address, beats, ...',
        'AXI write side -> HyperBus read side.',
    ],
    fill='#eefbea',
    outline='#2d6a2d',
)

box(
    860,
    560,
    1510,
    820,
    'u_rd_fifo (FWFT, async)',
    [
        'Carries 32-bit read beats from HyperBus to AXI domain.',
        'HB pushes assembled read words; AXI pops for R-channel.',
        'FWFT mode used in current design.',
    ],
    fill='#eefbea',
    outline='#2d6a2d',
)

box(
    1640,
    230,
    2300,
    460,
    '4) Command Decode (HB FSM)',
    [
        'Pop read command from cmd fifo in HB domain.',
        'Assert CS#, output CA bytes for memory/register read.',
    ],
    fill='#fff4ea',
    outline='#8a4b08',
)

box(
    1640,
    500,
    2300,
    780,
    '5) Read Data Capture on HyperBus',
    [
        'Apply read-latency behavior based on RWDS/latency settings.',
        'Sample DQ via IDDRE1 (90 deg sample clock path).',
        'Use RWDS transitions as data-valid for memory read timing.',
    ],
    fill='#fff4ea',
    outline='#8a4b08',
)

box(
    1640,
    820,
    2300,
    1140,
    '6) Read Beat Assembly + FIFO Push',
    [
        'Assemble 32-bit AXI words from captured HyperBus data stream.',
        'Push each completed 32-bit beat into u_rd_fifo.',
        'Terminate HyperBus transfer after required data count reached.',
    ],
    fill='#fff4ea',
    outline='#8a4b08',
)

arrow(415, 400, 415, 450)
arrow(415, 760, 415, 810)

arrow(740, 320, 860, 390)
arrow(1510, 390, 1640, 340)

arrow(1970, 460, 1970, 500)
arrow(1970, 780, 1970, 820)

arrow(1640, 950, 1510, 700)
arrow(860, 700, 740, 620)

d.rounded_rectangle((70, 1500, 2330, 1730), radius=16, fill='#f7f7f7', outline='#666', width=2)
notes = [
    'Notes:',
    '- Multi-beat reads are command-driven: one AR command expands into multiple HyperBus data words.',
    '- u_rd_fifo decouples HyperBus return timing from AXI R-channel backpressure.',
    '- AXI-full reads and writes are treated as mutually exclusive in current arbitration policy.',
]
y = 1530
for i, ln in enumerate(notes):
    d.text((95, y), ln, font=(font_hdr if i == 0 else font_txt), fill='#222')
    y += 40

out = '/raid/work/hyperbus_ai3/doc/multibeat_axi_read_flow.jpg'
img.save(out, 'JPEG', quality=95)
print(out)
