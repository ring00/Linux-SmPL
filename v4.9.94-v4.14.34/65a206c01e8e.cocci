//# pattern-7, witnesses: 23
@@
expression list listE0;
@@
- tcf_hash_release(listE0)
+ tcf_idr_release(listE0)
//# pattern-1, witnesses: 15
@@
expression IL1;
expression V0;
@@
- tc_action_net_init(tn, &V0, IL1)
+ tc_action_net_init(tn, &V0)
//# pattern-14, witnesses: 15
@@
expression list listE0;
@@
- tcf_hash_search(listE0)
+ tcf_idr_search(listE0)
//# pattern-13, witnesses: 14
@@
expression list listE0;
@@
- tcf_hash_insert(listE0)
+ tcf_idr_insert(listE0)
//# pattern-9, witnesses: 8
@@
expression list listE0;
@@
- tcf_hash_create(listE0)
+ tcf_idr_create(listE0)
//# pattern-10, witnesses: 8
@@
expression list listE0;
@@
- tcf_hash_check(listE0)
+ tcf_idr_check(listE0)
//# pattern-2, witnesses: 6
@r0@
identifier i, fn;
@@
struct tc_action_ops i = {
    .init = fn,
};
@@
expression EC1;
expression V0;
identifier act;
identifier bind;
identifier est;
identifier net;
identifier nla;
identifier r0.fn;
identifier replace;
@@
 int fn(struct net * net, struct nlattr * nla, struct nlattr * est, struct tc_action ** act, int replace, int bind)
 {
     <...
- if (!tcf_hash_check(tn, parm->index, act, bind)) {
- ret = tcf_hash_create(tn, parm->index, est, act, &V0, bind, EC1);
- }
+ if (!tcf_idr_check(tn, parm->index, act, bind)) {
+ ret = tcf_idr_create(tn, parm->index, est, act, &V0, bind, EC1);
+ }
     ...>
 }
//# pattern-5, witnesses: 5
@@
expression list listE0;
@@
- tcf_hash_cleanup(listE0)
+ tcf_idr_cleanup(listE0)
