//# pattern-1, witnesses: 3
@@
expression E0;
expression E1;
@@
- kmemdup(nla_data(E0), nla_len(E1), GFP_KERNEL)
+ nla_memdup(E0, GFP_KERNEL)
