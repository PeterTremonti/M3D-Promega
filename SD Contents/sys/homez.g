; homez.g - Home Z using IR probe (Z = 0 at bed top)
if !move.axes[0].homed
  M98 P"homex.g"

if !move.axes[1].homed
  M98 P"homey.g"
  
G1 X190 Y190 F7500
G30