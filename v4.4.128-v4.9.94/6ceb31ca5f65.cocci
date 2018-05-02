//# pattern-1, witnesses: 2
@@
expression E0;
@@
- !!E0 & VXLAN_F_UDP_CSUM
+ !E0 & VXLAN_F_UDP_ZERO_CSUM_TX
