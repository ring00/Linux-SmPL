//# pattern-11, witnesses: 2
@@
identifier fn;
identifier hdmi;
identifier s;
@@
  const struct dw_hdmi_phy_data * s = {
 };
void fn(struct dw_hdmi * hdmi)
 {
     <...
 const struct dw_hdmi_phy_data * s = {
 };
     ...>
 }
