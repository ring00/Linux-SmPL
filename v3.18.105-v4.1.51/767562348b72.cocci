//# pattern-1, witnesses: 2
@@
identifier s;
@@
 const struct dw_mci_drv_data s = {
+    .init = dw_mci_rockchip_init,
 };
