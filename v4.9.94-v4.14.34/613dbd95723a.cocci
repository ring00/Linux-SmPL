//# pattern-6, witnesses: 6
@r0@
identifier i, fn;
@@
struct xt_target i = {
    .target = fn,
};
@@
identifier par;
identifier skb;
@@
 unsigned int reject_tg6(struct sk_buff * skb, const struct xt_action_param * par)
 {
     <...
- par->hooknum
+ xt_hooknum(par)
     ...>
 }
//# pattern-2, witnesses: 5
@r1@
identifier i, fn;
@@
struct xt_target i = {
    .target = fn,
};
@@
identifier par;
identifier r1.fn;
identifier skb;
@@
 unsigned int fn(struct sk_buff * skb, const struct xt_action_param * par)
 {
     <...
- par->net
+ xt_net(par)
     ...>
 }
//# pattern-3, witnesses: 5
@r2@
identifier i, fn;
@@
struct xt_target i = {
    .target = fn,
};
@@
identifier par;
identifier r2.fn;
identifier skb;
@@
 unsigned int fn(struct sk_buff * skb, const struct xt_action_param * par)
 {
     <...
- par->hooknum
+ xt_hooknum(par)
     ...>
 }
//# pattern-1, witnesses: 3
@r3@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E1;
expression E3;
expression ME0;
expression ME2;
identifier r3.fn;
identifier skb;
identifier state;
identifier table;
@@
 unsigned int fn(struct sk_buff * skb, const struct nf_hook_state * state, struct xt_table * table)
 {
     <...
- acpar.net = state->net;
- acpar.in = state->in;
- acpar.out = state->out;
- ME0 = E1;
- ME2 = E3;
+ acpar.state = state;
     ...>
 }
//# pattern-5, witnesses: 3
@r4@
identifier i, fn;
@@
struct xt_target i = {
    .target = fn,
};
@@
identifier par;
identifier r4.fn;
identifier skb;
@@
 unsigned int fn(struct sk_buff * skb, const struct xt_action_param * par)
 {
     <...
- par->in
+ xt_in(par)
     ...>
 }
//# pattern-4, witnesses: 2
@r5@
identifier i, fn;
@@
struct xt_match i = {
    .match = fn,
};
@@
expression E1;
expression F0;
typedef bool;
identifier par;
identifier skb;
@@
 bool rpfilter_mt(const struct sk_buff * skb, struct xt_action_param * par)
 {
     <...
- F0(par->net, E1, par->in, info->flags)
+ F0(xt_net(par), E1, xt_in(par), info->flags)
     ...>
 }
//# pattern-7, witnesses: 2
@r6@
identifier i, fn;
@@
struct xt_target i = {
    .target = fn,
};
@@
expression E0;
identifier par;
identifier r6.fn;
identifier skb;
@@
 unsigned int fn(struct sk_buff * skb, const struct xt_action_param * par)
 {
     <...
- nf_log_packet(net, E0, par->hooknum, skb, par->in, par->out, &li, "%s", info->prefix)
+ nf_log_packet(net, E0, xt_hooknum(par), skb, xt_in(par), xt_out(par), &li, "%s", info->prefix)
     ...>
 }
