//# pattern-3, witnesses: 13
@@
identifier PV0;
@@
- dev_net()
+ PV0->net
//# pattern-2, witnesses: 3
@@
@@
- dev_net(skb->dev)
+ par->net
//# pattern-7, witnesses: 2
@r0@
identifier i, fn;
@@
struct xt_target i = {
    .target = fn,
};
@@
expression ME0;
identifier par;
identifier r0.fn;
identifier skb;
@@
 unsigned int fn(struct sk_buff * skb, const struct xt_action_param * par)
 {
     <...
- tproxy_tg4(skb, ME0, tgi->lport, tgi->mark_mask, tgi->mark_value)
+ tproxy_tg4(par->net, skb, ME0, tgi->lport, tgi->mark_mask, tgi->mark_value)
     ...>
 }
//# pattern-14, witnesses: 2
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
- dev_net(par->in)
+ par->net
     ...>
 }
