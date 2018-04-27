//# pattern-1, witnesses: 15
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
 int fn(struct net * net)
 {
     <...
- tc_action_net_init(tn, &V0)
+ tc_action_net_init(tn, &V0, net)
     ...>
 }
