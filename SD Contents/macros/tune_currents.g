; tune_currents.g - Stepper Current Tune Helper
; Displays safe recommended ranges based on cooling

M291 P"Max current for Duet 2 Maestro: 1.2A RMS (1.7A peak)" R"Driver Limits" S1 T6
M291 P"Typical safe range with heatsink: 800–1000 mA" R"Cooling OK?" S1 T6

; Example command to apply:
; M906 X800 Y800 Z800 E700:700
M291 P"Set currents using: M906 Xnnn Ynnn Znnn Eleft:Eright" R"Command Format" S1 T8