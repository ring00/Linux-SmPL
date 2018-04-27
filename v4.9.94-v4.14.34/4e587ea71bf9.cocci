//# pattern-1, witnesses: 2
@@
expression E0;
identifier fn;
identifier info;
identifier mxc;
identifier rt;
@@
 int fib6_add_rt2node(struct fib6_node * fn, struct rt6_info * rt, struct nl_info * info, struct mx6_config * mxc)
 {
     <...
- rt->rt6i_node = E0;
+ rcu_assign_pointer(rt->rt6i_node, fn);
     ...>
 }
//# pattern-2, witnesses: 2
@@
expression E0;
@@
- E0->rt6i_node
+ rcu_access_pointer(E0->rt6i_node)
