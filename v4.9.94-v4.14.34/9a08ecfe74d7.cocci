//# pattern-2, witnesses: 2
@@
@@
- nat = nf_ct_nat_ext_add(ct);
- if (nat == NULL) {
- return NF_ACCEPT;
- }
+ nat = nfct_nat(ct);
