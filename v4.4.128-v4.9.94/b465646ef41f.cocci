//# pattern-3, witnesses: 2
@@
identifier s;
@@
 const struct sunxi_mmc_cfg s = {
-    .clk_delays = sunxi_mmc_clk_delays,
+    . = 0,
 };
