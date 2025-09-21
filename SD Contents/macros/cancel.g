; cancel.g - Safe cancel without rehoming

M83
G91
G1 Z5 F3000 H2     ; Lift head
G90
G1 X0 Y0 F6000     ; Move to front-left corner
M564 H1 S1         ; Reinforce limits