//# pattern-2, witnesses: 3
@@
expression EC1;
expression S0;
@@
- mwifiex_add_virtual_intf(adapter->wiphy, S0, EC1, NULL, NULL)
+ mwifiex_add_virtual_intf(adapter->wiphy, S0, NET_NAME_ENUM, EC1, NULL, NULL)
