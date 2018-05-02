//# pattern-2, witnesses: 2
@@
expression IL1;
expression ME0;
identifier cscon;
identifier hdmi;
identifier prep;
identifier res;
@@
 int hdmi_phy_configure(struct dw_hdmi * hdmi, unsigned char prep, unsigned char res, int cscon)
 {
     <...
- const struct dw_hdmi_sym_term * sym_term = plat_data->sym_term;
- hdmi_phy_i2c_write(hdmi, ME0, IL1);
+ const struct dw_hdmi_phy_config * phy_config = plat_data->phy_config;
+ hdmi_phy_i2c_write(hdmi, ME0, IL1);
     ...>
 }
//# pattern-4, witnesses: 2
@@
identifier s;
@@
 struct dw_hdmi_plat_data s = {
-    .sym_term = imx_sym_term,
+    .phy_config = imx_phy_config,
 };
