//# pattern-2, witnesses: 2
@@
identifier fn;
identifier info;
identifier mxc;
identifier rt;
@@
 int fib6_add_rt2node(struct fib6_node * fn, struct rt6_info * rt, struct nl_info * info, struct mx6_config * mxc)
 {
     <...
+ if (!info->skip_notify) {
+ }
     ...>
 }
