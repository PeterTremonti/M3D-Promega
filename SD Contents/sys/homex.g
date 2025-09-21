; homex.g - Home X axis (X max), home Y only if not already homed

if sensors.endstops[1].triggered != true
  {
  M98 P"homey.g"
  }

G91
G1 H1 X400 F7500
G1 X-5 F1000
G1 H1 X10 F1200
G90