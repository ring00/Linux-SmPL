//# pattern-1, witnesses: 3
@@
expression E0;
expression E1;
@@
- E0 && drm_match_cea_mode(E1) > 1
+ E0 && drm_default_rgb_quant_range(E1) == HDMI_QUANTIZATION_RANGE_LIMITED
