//# pattern-4, witnesses: 2
@@
expression E0;
@@
- selinux_netlbl_sidlookup_cached(skb, &secattr, E0)
+ selinux_netlbl_sidlookup_cached(skb, family, &secattr, E0)
