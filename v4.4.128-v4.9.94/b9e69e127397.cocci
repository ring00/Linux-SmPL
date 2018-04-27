//# pattern-13, witnesses: 9
@@
expression V0;
expression V1;
@@
- xt_hook_unlink(&V0, V1)
+ kfree(V1)
//# pattern-27, witnesses: 9
@@
expression F1;
identifier s;
@@
 struct pernet_operations s = {
-    .init = F1,
 };
//# pattern-18, witnesses: 2
@r0@
identifier i, fn;
@@
struct pernet_operations i = {
    .init = fn,
};
@@
identifier net;
identifier r0.fn;
@@
 int fn(struct net * net)
 {
     <...
- int err = err;
- err = ;
- return err;
+ return 0;
     ...>
 }
//# pattern-19, witnesses: 2
@r1@
identifier i, fn;
@@
struct pernet_operations i = {
    .init = fn,
};
@@
type T0;
identifier net;
identifier r1.fn;
@@
 int fn(struct net * net)
 {
     <...
- T0 repl = repl;
- repl = &packet_filter;
- if (repl == NULL) {
- }
+ if (net == &init_net || !forward) {
+ }
     ...>
 }
//# pattern-20, witnesses: 2
@@
expression E0;
@@
- struct ipt_replace * repl = repl;
- repl = ipt_alloc_initial_table(&packet_filter);
- E0;
//# pattern-36, witnesses: 2
@@
expression E0;
@@
- struct ip6t_replace * repl = repl;
- repl = ip6t_alloc_initial_table(&packet_filter);
- E0;
//# pattern-37, witnesses: 2
@@
expression V0;
expression V1;
@@
- nf_unregister_hooks(V0, ARRAY_SIZE(V1));
