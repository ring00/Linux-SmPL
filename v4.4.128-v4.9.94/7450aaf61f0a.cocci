//# pattern-3, witnesses: 4
@@
expression list listE0;
@@
- sk_gfp_atomic(listE0)
+ sk_gfp_mask(listE0)
//# pattern-2, witnesses: 2
@@
@@
- sk_gfp_atomic(sk, GFP_ATOMIC)
+ sk_gfp_mask(sk, GFP_ATOMIC | __GFP_NOWARN)
