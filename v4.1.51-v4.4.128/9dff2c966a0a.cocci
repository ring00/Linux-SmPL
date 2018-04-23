//# pattern-1, witnesses: 7
@@
expression ME0;
@@
- dev_net(ME0)
+ state->net
//# pattern-7, witnesses: 5
@@
expression E0;
@@
- dev_net(E0)
+ state->net
//# pattern-4, witnesses: 3
@r0@
identifier fn;
expression P0;
@@
xt_hook_link(P0, fn)
@@
expression ME0;
identifier ops;
identifier r0.fn;
identifier skb;
identifier state;
@@
 unsigned int fn(const struct nf_hook_ops * ops, struct sk_buff * skb, const struct nf_hook_state * state)
 {
     <...
- const struct net * net = net;
- net = dev_net();
- return ipt_do_table(skb, ops->hooknum, state, ME0);
+ return ipt_do_table(skb, ops->hooknum, state, ME0);
     ...>
 }
//# pattern-3, witnesses: 2
@r1@
identifier fn;
expression P0;
@@
xt_hook_link(P0, fn)
@@
expression F0;
expression ME1;
identifier ops;
identifier r1.fn;
identifier skb;
identifier state;
@@
 unsigned int fn(const struct nf_hook_ops * ops, struct sk_buff * skb, const struct nf_hook_state * state)
 {
     <...
- const struct net * net = dev_net();
- return F0(skb, ops->hooknum, state, ME1);
+ return F0(skb, ops->hooknum, state, ME1);
     ...>
 }
//# pattern-6, witnesses: 2
@r2@
identifier fn;
expression P0, P1, P2;
@@
(varies)(P0, P1, P2, fn)
@@
expression F0;
expression ME1;
identifier ct;
identifier ops;
identifier r2.fn;
identifier skb;
identifier state;
@@
 unsigned int fn(const struct nf_hook_ops * ops, struct sk_buff * skb, const struct nf_hook_state * state, struct nf_conn * ct)
 {
     <...
- struct net * net = nf_ct_net(ct);
- return F0(skb, ops->hooknum, state, ME1);
+ return F0(skb, ops->hooknum, state, ME1);
     ...>
 }
