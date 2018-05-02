//# pattern-4, witnesses: 2
@@
@@
- PPTP_GRE_IS_S(header->flags)
+ GRE_IS_SEQ(header->gre_hd.flags)
