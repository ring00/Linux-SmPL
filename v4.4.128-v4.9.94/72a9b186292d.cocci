//# pattern-1, witnesses: 3
@@
expression E0;
@@
- if (!E0) {
- return;
- }
//# pattern-8, witnesses: 2
@@
expression E0;
@@
- E0 || xen_have_vector_callback && xen_feature(XENFEAT_hvm_safe_pvclock)
+ E0 || xen_feature(XENFEAT_hvm_safe_pvclock)
