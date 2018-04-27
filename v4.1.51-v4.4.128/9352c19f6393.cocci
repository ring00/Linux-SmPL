//# pattern-2, witnesses: 3
@@
identifier s;
@@
 const struct ieee80211_ops s = {
-    .get_tkip_seq = rt2800_get_tkip_seq,
+    .get_key_seq = rt2800_get_key_seq,
 };
