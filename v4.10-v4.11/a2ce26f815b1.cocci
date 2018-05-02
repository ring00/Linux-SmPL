//# pattern-1, witnesses: 2
@@
expression ME0;
expression ME1;
@@
- if (ME0) {
- if (ME1) {
- frame.avi.quantization_range = HDMI_QUANTIZATION_RANGE_LIMITED;
- }
- }
+ drm_hdmi_avi_infoframe_quant_range(&frame.avi, , ME0);
