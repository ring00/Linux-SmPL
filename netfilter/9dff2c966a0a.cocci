//# pattern-1, witnesses: 9
@@
expression ME0;
@@
- dev_net(ME0)
+ state->net
//# pattern-9, witnesses: 5
@@
expression E0;
@@
- dev_net(E0)
+ state->net
//# pattern-3, witnesses: 4
@r0@
identifier fn;
expression P0;
@@
xt_hook_link(P0, fn)
@@
expression F0;
expression ME1;
identifier ops;
identifier r0.fn;
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
//# pattern-6, witnesses: 3
@r1@
identifier fn;
expression P0;
@@
xt_hook_link(P0, fn)
@@
expression ME0;
identifier ops;
identifier r1.fn;
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
//# pattern-2, witnesses: 2
@r2@
identifier i, fn;
@@
struct nf_hook_ops i = {
    .hook = fn,
};
@@
identifier nhs;
identifier ops;
identifier r2.fn;
identifier skb;
@@
 unsigned int fn(const struct nf_hook_ops * ops, struct sk_buff * skb, const struct nf_hook_state * nhs)
 {
     <...
- dev_net()
+ nhs->net
     ...>
 }
//# pattern-8, witnesses: 2
@r3@
identifier fn;
expression P0, P1, P2;
@@
(varies)(P0, P1, P2, fn)
@@
expression F0;
expression ME1;
identifier ct;
identifier ops;
identifier r3.fn;
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
//# pattern-10, witnesses: 2
@r4@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier hook;
identifier r4.fn;
identifier skb;
identifier state;
identifier table;
@@
 unsigned int fn(struct sk_buff * skb, unsigned int hook, const struct nf_hook_state * state, struct xt_table * table)
 {
     <...
- trace_packet(skb, hook, state->in, state->out, table->name, private, e)
+ trace_packet(state->net, skb, hook, state->in, state->out, table->name, private, e)
     ...>
 }
