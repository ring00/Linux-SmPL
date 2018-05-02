//# pattern-1, witnesses: 2
@@
expression E0;
expression V1;
@@
- E0 = V1->ptr_attr.ptr
+ E0 = u64_to_user_ptr(V1->ptr_attr)
