//# pattern-2, witnesses: 11
@r0@
identifier i, fn;
@@
struct tc_action_ops i = {
    .init = fn,
};
@@
expression E0;
identifier a;
identifier bind;
identifier est;
identifier net;
identifier nla;
identifier ovr;
identifier r0.fn;
@@
 int fn(struct net * net, struct nlattr * nla, struct nlattr * est, struct tc_action * a, int ovr, int bind)
 {
     <...
- tcf_hash_create(E0, est, a, sizeof(unsigned long), bind)
+ tcf_hash_create(E0, est, a, sizeof(unsigned long), bind, false)
     ...>
 }
//# pattern-4, witnesses: 2
@@
expression V0;
@@
- kfree_rcu(V0, tcfc_rcu);
+ call_rcu(&V0->tcfc_rcu, free_tcf);
