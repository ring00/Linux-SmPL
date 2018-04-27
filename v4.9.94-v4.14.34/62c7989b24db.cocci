//# pattern-2, witnesses: 3
@@
typedef bool;
identifier fn;
identifier off;
identifier reg_type;
identifier size;
identifier type;
@@
- bool fn(int off, int size, enum bpf_access_type type, enum bpf_reg_type * reg_type)
+ bool fn(int off, int size, enum bpf_access_type type, enum bpf_reg_type * reg_type)
 { ... }
