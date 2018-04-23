//# pattern-3, witnesses: 12
@@
identifier PV0;
@@
- dev_net()
+ PV0->net
//# pattern-10, witnesses: 2
@r0@
identifier i, fn;
@@
struct xt_target i = {
    .target = fn,
};
@@
identifier par;
identifier r0.fn;
identifier skb;
@@
 unsigned int fn(struct sk_buff * skb, const struct xt_action_param * par)
 {
     <...
- dev_net(par->in)
+ par->net
     ...>
 }
