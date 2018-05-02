//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression IL1;
expression ME0;
identifier pkey_table;
identifier port;
identifier portnum;
identifier rdi;
@@
- int rvt_init_port(struct rvt_dev_info * rdi, struct rvt_ibport * port, int portnum, u16 * pkey_table)
+ int rvt_init_port(struct rvt_dev_info * rdi, struct rvt_ibport * port, int portnum, u16 * pkey_table)
 {
     <...
- if (!ME0) {
- rvt_pr_err(rdi);
- return -IL1;
- }
     ...>
 }
