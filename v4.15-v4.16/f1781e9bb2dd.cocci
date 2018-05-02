//# pattern-2, witnesses: 3
@@
expression E0;
@@
- drm_hdmi_vendor_infoframe_from_display_mode(&E0, mode)
+ drm_hdmi_vendor_infoframe_from_display_mode(&E0, &hdmi->connector, mode)
