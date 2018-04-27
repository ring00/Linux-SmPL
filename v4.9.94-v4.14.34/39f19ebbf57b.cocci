//# pattern-1, witnesses: 14
@@
identifier s;
@@
 const struct bpf_func_proto s = {
 };
//# pattern-7, witnesses: 7
@@
@@
- ARG_PTR_TO_RAW_STACK
+ ARG_PTR_TO_UNINIT_MEM
//# pattern-4, witnesses: 3
@@
@@
- ARG_CONST_STACK_SIZE_OR_ZERO
+ ARG_CONST_SIZE_OR_ZERO
//# pattern-3, witnesses: 2
@@
@@
- ARG_CONST_STACK_SIZE
+ ARG_CONST_SIZE
