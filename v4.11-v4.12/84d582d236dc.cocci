//# pattern-1, witnesses: 2
@@
statement S0;
@@
- if (xen_feature(XENFEAT_hvm_safe_pvclock)) { S0 }
+ if (xen_have_vector_callback && xen_feature(XENFEAT_hvm_safe_pvclock)) { S0 }
