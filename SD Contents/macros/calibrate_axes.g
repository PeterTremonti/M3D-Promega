; calibrate_axes.g - Calibrate X/Y/Z steps/mm
; Instructions:
; - Move each axis 100mm using G1
; - Measure actual distance moved
; - Then run:
;   set var.x_actual = (measured)
;   set var.y_actual = (measured)
;   set var.z_actual = (measured)

; Set current values:
var.x_steps = 79.67
var.y_steps = 80.17
var.z_steps = 283.92

; Calculate new steps/mm
var.x_new = var.x_steps * 100 / var.x_actual
var.y_new = var.y_steps * 100 / var.y_actual
var.z_new = var.z_steps * 100 / var.z_actual

M291 P{"New X steps/mm: " ^ var.x_new} R"Calibrated" S1 T5
M291 P{"New Y steps/mm: " ^ var.y_new} R"Calibrated" S1 T5
M291 P{"New Z steps/mm: " ^ var.z_new} R"Calibrated" S1 T5