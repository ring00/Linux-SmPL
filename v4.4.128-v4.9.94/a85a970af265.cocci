//# pattern-20, witnesses: 20
@r0@
identifier i, fn;
@@
struct tc_action_ops i = {
    .init = fn,
};
@@
identifier act;
identifier bind;
identifier est;
identifier net;
identifier nla;
identifier r0.fn;
identifier replace;
@@
- int fn(struct net * net, struct nlattr * nla, struct nlattr * est, struct tc_action * act, int replace, int bind)
+ int fn(struct net * net, struct nlattr * nla, struct nlattr * est, struct tc_action ** act, int replace, int bind)
 {
     <...
- tcf_hash_release(act, bind)
+ tcf_hash_release(*act, bind)
     ...>
 }
//# pattern-4, witnesses: 14
@r1@
identifier i, fn;
@@
struct tc_action_ops i = {
    .lookup = fn,
};
@@
identifier a;
identifier index;
identifier net;
identifier r1.fn;
typedef u32;
@@
- int fn(struct net * net, struct tc_action * a, u32 index)
+ int fn(struct net * net, struct tc_action ** a, u32 index)
 { ... }
//# pattern-17, witnesses: 14
@@
identifier s;
@@
 struct tc_action_ops s = {
+    .size = sizeof(unsigned long),
 };
//# pattern-1, witnesses: 13
@r2@
identifier i, fn;
@@
struct tc_action_ops i = {
    .walk = fn,
};
@@
identifier a;
identifier cb;
identifier net;
identifier r2.fn;
identifier skb;
identifier type;
@@
- int fn(struct net * net, struct sk_buff * skb, struct netlink_callback * cb, int type, struct tc_action * a)
+ int fn(struct net * net, struct sk_buff * skb, struct netlink_callback * cb, int type, const struct tc_action_ops * ops)
 {
     <...
- tcf_generic_walker(tn, skb, cb, type, a)
+ tcf_generic_walker(tn, skb, cb, type, ops)
     ...>
 }
//# pattern-13, witnesses: 11
@r3@
identifier i, fn;
@@
struct tc_action_ops i = {
    .init = fn,
};
@@
identifier act;
identifier bind;
identifier est;
identifier net;
identifier nla;
identifier r3.fn;
identifier replace;
@@
 int fn(struct net * net, struct nlattr * nla, struct nlattr * est, struct tc_action ** act, int replace, int bind)
 {
     <...
- tcf_hash_insert(tn, act)
+ tcf_hash_insert(tn, *act)
     ...>
 }
//# pattern-34, witnesses: 5
@@
identifier s;
@@
 struct tcf_common * s = {
 };
//# pattern-54, witnesses: 3
@r4@
identifier i, fn;
@@
struct tc_action_ops i = {
    .init = fn,
};
@@
identifier act;
identifier bind;
identifier est;
identifier net;
identifier nla;
identifier r4.fn;
identifier replace;
@@
 int fn(struct net * net, struct nlattr * nla, struct nlattr * est, struct tc_action ** act, int replace, int bind)
 {
     <...
- tcf_hash_cleanup(act, est)
+ tcf_hash_cleanup(*act, est)
     ...>
 }
//# pattern-3, witnesses: 2
@@
identifier s;
@@
 struct tcf_connmark_info * s = {
 };
//# pattern-5, witnesses: 2
@@
expression E0;
@@
- E0->priv
+ to_bpf
//# pattern-6, witnesses: 2
@r5@
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
@@
 int tcf_pedit_init(struct net * net, struct nlattr * nla, struct nlattr * est, struct tc_action ** a, int ovr, int bind)
 {
     <...
- E0 = to_pedit(a)
+ E0 = to_pedit
     ...>
 }
//# pattern-9, witnesses: 2
@@
identifier s;
@@
 struct tcf_police * s = {
 };
//# pattern-10, witnesses: 2
@@
identifier s;
@@
 struct tcf_gact * s = {
 };
//# pattern-12, witnesses: 2
@@
identifier s;
@@
 struct tcf_pedit * s = {
 };
//# pattern-19, witnesses: 2
@r6@
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
@@
 int tcf_connmark_init(struct net * net, struct nlattr * nla, struct nlattr * est, struct tc_action ** a, int ovr, int bind)
 {
     <...
- E0 = to_connmark(a)
+ E0 = to_connmark
     ...>
 }
//# pattern-30, witnesses: 2
@r7@
identifier i, fn;
@@
struct tc_action_ops i = {
    .walk = fn,
};
@@
expression IL0;
identifier cb;
identifier net;
identifier ops;
identifier skb;
identifier type;
@@
 int tcf_act_police_walker(struct net * net, struct sk_buff * skb, struct netlink_callback * cb, int type, const struct tc_action_ops * ops)
 {
     <...
- tcf_action_dump_1(skb, a, 0, IL0)
+ tcf_action_dump_1(skb, p, 0, IL0)
     ...>
 }
//# pattern-32, witnesses: 2
@@
identifier s;
@@
 struct tcf_ife_info * s = {
 };
//# pattern-33, witnesses: 2
@@
identifier s;
@@
 struct tcf_vlan * s = {
 };
//# pattern-38, witnesses: 2
@@
identifier s;
@@
 struct tcf_nat * s = {
 };
//# pattern-39, witnesses: 2
@@
identifier s;
@@
 struct tcf_ipt * s = {
 };
//# pattern-42, witnesses: 2
@@
identifier s;
@@
 struct tcf_ife_info * s = {
 };
//# pattern-55, witnesses: 2
@@
identifier s;
@@
 struct tcf_defact * s = {
 };
//# pattern-57, witnesses: 2
@@
identifier s;
@@
 struct tcf_skbedit * s = {
 };
//# pattern-60, witnesses: 2
@@
identifier s;
@@
 struct tcf_csum * s = {
 };
//# pattern-72, witnesses: 2
@@
identifier s;
@@
 struct tcf_mirred * s = {
 };
//# pattern-75, witnesses: 2
@@
identifier s;
@@
 struct tcf_ife_info * s = {
 };
//# pattern-81, witnesses: 2
@r8@
identifier i, fn;
@@
struct tc_action_ops i = {
    .init = fn,
};
@@
identifier a;
identifier bind;
identifier est;
identifier net;
identifier nla;
identifier ovr;
@@
 int tcf_ife_init(struct net * net, struct nlattr * nla, struct nlattr * est, struct tc_action ** a, int ovr, int bind)
 {
     <...
- _tcf_ife_cleanup(a, bind)
+ _tcf_ife_cleanup(*a, bind)
     ...>
 }
//# pattern-82, witnesses: 2
@r9@
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
@@
 int tcf_simp_init(struct net * net, struct nlattr * nla, struct nlattr * est, struct tc_action ** a, int ovr, int bind)
 {
     <...
- E0 = to_defact(a)
+ E0 = to_defact
     ...>
 }
//# pattern-83, witnesses: 2
@r10@
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
@@
 int tcf_skbedit_init(struct net * net, struct nlattr * nla, struct nlattr * est, struct tc_action ** a, int ovr, int bind)
 {
     <...
- E0 = to_skbedit(a)
+ E0 = to_skbedit
     ...>
 }
