//# pattern-2, witnesses: 2
@@
expression list listE1;
identifier s;
@@
 struct omap_hdmi_audio_pdata s = {
-    .dss_version = omapdss_get_version(listE1),
+    .version = 4,
 };
//# pattern-3, witnesses: 2
@@
expression list listE1;
identifier s;
@@
 struct omap_hdmi_audio_pdata s = {
-    .dss_version = omapdss_get_version(listE1),
+    .version = 5,
 };
