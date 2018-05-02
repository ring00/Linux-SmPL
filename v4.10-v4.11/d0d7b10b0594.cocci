//# pattern-1, witnesses: 28
@@
expression E0;
@@
- E0->priv_flags & IFF_802_1Q_VLAN
+ is_vlan_dev(E0)
