//# pattern-6, witnesses: 4
@@
expression E0;
@@
- E0->interface_pix_fmt
+ E0->bus_format
//# pattern-3, witnesses: 2
@@
expression list listE0;
@@
- imx_drm_panel_format(listE0)
+ imx_drm_set_bus_format(listE0)
