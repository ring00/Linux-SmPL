//# pattern-1, witnesses: 4
@@
expression E1;
identifier s;
@@
 const struct ci_hdrc_imx_platform_flag s = {
+    .flags = E1 | 1 << 7,
 };
