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

# Helpers

def box(x1, y1, x2, y2, title, lines, fill='#eef4ff', outline='#1f3b73'):
    d.rounded_rectangle((x1, y1, x2, y2), radius=18, fill=fill, outline=outline, width=3)
    d.text((x1+18, y1+12), title, font=font_hdr, fill='#102347')
    y = y1 + 56
    for ln in lines:
        d.text((x1+22, y), ln, font=font_txt, fill='#1c1c1c')
        y += 34


def arrow(x1, y1, x2, y2, color='#2c4f8f', w=5):
    d.line((x1, y1, x2, y2), fill=color, width=w)
    import math
    ang = math.atan2(y2-y1, x2-x1)
    ah = 18
    aw = 10
    p1 = (x2, y2)
    p2 = (x2 - ah*math.cos(ang) + aw*math.sin(ang), y2 - ah*math.sin(ang) - aw*math.cos(ang))
    p3 = (x2 - ah*math.cos(ang) - aw*math.sin(ang), y2 - ah*math.sin(ang) + aw*math.cos(ang))
    d.polygon([p1, p2, p3], fill=color)

# Title
d_title = 'Multi-Beat AXI-Full Write Processing Flow (Current Design)'
d.text((70, 35), d_title, font=font_title, fill='#0d2552')

# Swimlane headers
lanes = [
    (70, 120, 760, 170, 'AXI Clock Domain (50 MHz)', '#eaf2ff'),
    (830, 120, 1540, 170, 'CDC FIFOs', '#eefbea'),
    (1610, 120, 2330, 170, 'HyperBus Clock Domain (200 MHz)', '#fff4ea'),
]
for x1,y1,x2,y2,t,c in lanes:
    d.rounded_rectangle((x1,y1,x2,y2), radius=14, fill=c, outline='#444', width=2)
    d.text((x1+18,y1+12), t, font=font_hdr, fill='#222')

# AXI side boxes
box(90, 230, 740, 400, '1) AW Handshake', [
    'Accept AW when INCR/32-bit/len<=31 and no write pending.',
    'Latch aw_addr_q, aw_len_q, set aw_pending=1, w_beats_rcvd=0.',
], fill='#eaf2ff')

box(90, 450, 740, 740, '2) W Beat Acceptance Loop', [
    's_axi_wready = aw_pending && !wr_fifo_full && (w_beats_rcvd<=aw_len_q).',
    'Each W handshake:',
    '  - Push {WSTRB,WDATA} into u_wr_fifo (timing unchanged).',
    '  - Increment w_beats_rcvd.',
    'When final beat (w_beats_rcvd == aw_len_q):',
    '  - Push one write command into u_cmd_fifo.',
    '  - Clear aw_pending.',
], fill='#eaf2ff')

box(90, 790, 740, 960, '3) Write Response', [
    'Wait for B token from b_fifo.',
    'Drive BVALID/BRESP=OKAY to AXI host.',
], fill='#eaf2ff')

# FIFO lane boxes
box(860, 300, 1510, 500, 'u_wr_fifo (FWFT, async)', [
    'Carries 36b write beats: {WSTRB[3:0], WDATA[31:0]}',
    'Write clock: axi_aclk, Read clock: hb_clk_200',
], fill='#eefbea', outline='#2d6a2d')

box(860, 560, 1510, 760, 'u_cmd_fifo (STD, async)', [
    'Carries write command metadata:',
    'is_write, is_reg, address, beats, ...',
    'Written in AXI domain, read in HyperBus domain',
], fill='#eefbea', outline='#2d6a2d')

box(860, 820, 1510, 980, 'u_b_fifo (STD, async)', [
    'Carries write-complete token back to AXI domain.',
], fill='#eefbea', outline='#2d6a2d')

# HyperBus side
box(1640, 230, 2300, 430, '4) Command Decode (HB FSM)', [
    'Pop cmd_fifo entry in HB domain.',
    'Enter CS setup + CA transmit sequence.',
], fill='#fff4ea', outline='#8a4b08')

box(1640, 470, 2300, 730, '5) Write Path Setup', [
    'Optionally run latency/wait states per transaction type.',
    'Prime serializer from wr_fifo (wrbuf/wrnext).',
    'Prepare DQ bytes and RWDS byte masks from WSTRB.',
], fill='#fff4ea', outline='#8a4b08')

box(1640, 770, 2300, 1080, '6) Burst Streaming on HyperBus', [
    'HB_WRITE emits 16-bit words continuously from buffered data.',
    'For each 32-bit AXI beat: lower half then upper half serialized.',
    'RWDS outputs byte enables (active low) aligned with DQ bytes.',
    'After last required word: stop CK and terminate transaction.',
], fill='#fff4ea', outline='#8a4b08')

box(1640, 1120, 2300, 1320, '7) Completion', [
    'Push completion token into b_fifo (HB->AXI).',
    'AXI side returns B response to host.',
], fill='#fff4ea', outline='#8a4b08')

# Arrows between major blocks
arrow(415, 400, 415, 450)
arrow(415, 740, 415, 790)

arrow(740, 560, 860, 400)
arrow(740, 640, 860, 640)
arrow(740, 860, 860, 900)

arrow(1510, 640, 1640, 320)
arrow(1510, 400, 1640, 560)
arrow(1510, 900, 1640, 1220)

arrow(1970, 430, 1970, 470)
arrow(1970, 730, 1970, 770)
arrow(1970, 1080, 1970, 1120)

# Notes
d.rounded_rectangle((70, 1500, 2330, 1730), radius=16, fill='#f7f7f7', outline='#666', width=2)
notes = [
    'Notes:',
    '- This diagram reflects current behavior: command is issued after all write beats are accepted.',
    '- u_wr_fifo push timing is driven directly by AXI W-channel handshake and is not altered by HB FSM timing.',
    '- HyperBus side uses Xilinx primitive PHY and serializer states to emit CA, data, and RWDS masks.',
]
y = 1530
for i, ln in enumerate(notes):
    d.text((95, y), ln, font=(font_hdr if i == 0 else font_txt), fill='#222')
    y += 40

out = '/raid/work/hyperbus_ai3/doc/multibeat_axi_write_flow.jpg'
img.save(out, 'JPEG', quality=95)
print(out)
