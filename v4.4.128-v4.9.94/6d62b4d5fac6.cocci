//# pattern-1, witnesses: 3
@@
expression list listE0;
@@
- convert_legacy_u32_to_link_mode(listE0)
+ ethtool_convert_legacy_u32_to_link_mode(listE0)
//# pattern-2, witnesses: 3
@@
expression list listE0;
@@
- convert_link_mode_to_legacy_u32(listE0)
+ ethtool_convert_link_mode_to_legacy_u32(listE0)
