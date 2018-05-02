//# pattern-7, witnesses: 2
@@
expression ME0;
expression V1;
typedef bool;
identifier dev;
identifier has_hdmi;
identifier has_sdtv;
identifier no_error_inj;
identifier show_ccs_cap;
identifier show_ccs_out;
@@
 int vivid_create_controls(struct vivid_dev * dev, bool show_ccs_cap, bool show_ccs_out, bool no_error_inj, bool has_sdtv, bool has_hdmi)
 {
     <...
- struct v4l2_ctrl_handler * hdl_loop_out = &dev->ctrl_hdl_loop_out;
- if (ME0) {
- v4l2_ctrl_add_handler(V1, hdl_loop_out, NULL);
- }
+ struct v4l2_ctrl_handler * hdl_loop_cap = &dev->ctrl_hdl_loop_cap;
+ if (ME0) {
+ }
     ...>
 }
