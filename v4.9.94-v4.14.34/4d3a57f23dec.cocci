//# pattern-2, witnesses: 4
@r0@
identifier i, fn;
@@
struct pernet_operations i = {
    .init = fn,
};
@@
expression V0;
expression V1;
identifier net;
identifier r0.fn;
@@
 int fn(struct net * net)
 {
     <...
- int ret = 0;
- ret = nf_ct_l4proto_pernet_register(net, V0, ARRAY_SIZE(V1));
- return ret;
+ return nf_ct_l4proto_pernet_register(net, V0, ARRAY_SIZE(V1));
     ...>
 }
//# pattern-1, witnesses: 2
@r1@
identifier i, fn;
@@
struct pernet_operations i = {
    .exit = fn,
};
@@
expression V0;
identifier net;
identifier r1.fn;
@@
 void fn(struct net * net)
 {
     <...
- nf_ct_l3proto_pernet_unregister(net, &V0);
     ...>
 }
