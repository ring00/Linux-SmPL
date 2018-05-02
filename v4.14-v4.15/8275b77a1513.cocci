//# pattern-1, witnesses: 2
@@
identifier s;
@@
 const struct pcr_ops s = {
+    .set_aspm = rts5249_set_aspm,
+    .set_l1off_cfg_sub_d0 = rts5250_set_l1off_cfg_sub_d0,
 };
