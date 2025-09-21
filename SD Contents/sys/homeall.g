; homeall.g - Home Y, then X, then Z using IR probe

G91  ; Enable relative positioning

if !sensors.endstops[2].triggered
  G1 H2 Z+5 F600  ; Lower bed slightly only if Z stop is not triggered

G90  ; Return to absolute positioning

M98 P"homey.g"
M98 P"homex.g"
M98 P"homez.g"
