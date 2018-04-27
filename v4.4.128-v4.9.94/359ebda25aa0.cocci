//# pattern-1, witnesses: 2
@@
expression E0;
@@
- E0 |= IPSKB_FORWARDED
+ E0 |= IPSKB_FORWARDED | IPSKB_FRAG_SEGS
