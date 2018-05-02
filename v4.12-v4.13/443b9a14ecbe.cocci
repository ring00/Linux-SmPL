//# pattern-4, witnesses: 3
@@
expression E1;
expression ME0;
@@
- ntb_mw_clear_trans(ME0, E1)
+ ntb_mw_clear_trans(ME0, PIDX, E1)
//# pattern-8, witnesses: 3
@@
expression E1;
expression ME0;
expression ME2;
expression ME3;
@@
- ntb_mw_set_trans(ME0, E1, ME2, ME3)
+ ntb_mw_set_trans(ME0, PIDX, E1, ME2, ME3)
//# pattern-1, witnesses: 2
@@
identifier s;
@@
 const struct ntb_dev_ops s = {
-    .mw_get_range = intel_ntb_mw_get_range,
+    .mw_get_align = intel_ntb_mw_get_align,
+    .peer_mw_count = intel_ntb_peer_mw_count,
+    .peer_mw_get_addr = intel_ntb_peer_mw_get_addr,
 };
