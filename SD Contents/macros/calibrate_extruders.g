; calibrate_extruders.g - Interactive Extruder Calibration for E0 and E1
; Instructions:
; - Mark 120mm on the filament
; - Extrude exactly 100mm from E0, measure remaining length
; - Send: M291 P"Enter remaining length for E0 (mm):" R"Extruder Calibration" S3
; - Set variable: set var.e0_measured = (your value)

; Repeat for E1 and set: set var.e1_measured = (your value)
; Example: set var.e0_measured = 26.8

; Set current values:
var.e0_steps = 196.38
var.e1_steps = 196.38

; Calculate new steps/mm
var.e0_new = var.e0_steps * 100 / (120 - var.e0_measured)
var.e1_new = var.e1_steps * 100 / (120 - var.e1_measured)

M291 P{"New E0 steps/mm: " ^ var.e0_new ^ " | Add to M92"} R"Result" S1 T5
M291 P{"New E1 steps/mm: " ^ var.e1_new ^ " | Add to M92"} R"Result" S1 T5