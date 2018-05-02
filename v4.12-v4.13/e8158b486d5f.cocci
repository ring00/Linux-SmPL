//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
typedef bool;
identifier fwnode;
identifier propname;
@@
 bool fwnode_property_present(struct fwnode_handle * fwnode, const char * propname)
 {
     <...
- fwnode_call_int_op(E0, )
+ fwnode_call_bool_op(E0, )
     ...>
 }
