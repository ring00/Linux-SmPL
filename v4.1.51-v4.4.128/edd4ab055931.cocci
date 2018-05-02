//# pattern-1, witnesses: 2
@@
identifier s;
@@
 const struct power_supply_desc s = {
+    .set_property = max17042_set_property,
+    .property_is_writeable = max17042_property_is_writeable,
 };
