//# pattern-7, witnesses: 9
@r0@
identifier i, fn;
@@
struct pernet_operations i = {
    .init = fn,
};
@@
expression V0;
identifier net;
identifier r0.fn;
@@
- int fn(struct net * net)
+ int fn(struct net * net)
 {
     <...
- int ret = 0;
- ret = nf_ct_l4proto_pernet_register(net, &V0);
     ...>
 }
//# pattern-8, witnesses: 3
@r1@
identifier i, fn;
@@
struct pernet_operations i = {
    .init = fn,
};
@@
identifier net;
identifier r1.fn;
@@
 int fn(struct net * net)
 { ... }
