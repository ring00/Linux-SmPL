//# pattern-1, witnesses: 2
@@
identifier s;
@@
 struct watchdog_ops s = {
+    .restart = bcm47xx_wdt_restart,
 };
