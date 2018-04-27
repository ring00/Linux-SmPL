//# pattern-1, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier expr;
identifier pkt;
identifier r1.fn;
identifier regs;
@@
 void fn(const struct nft_expr * expr, struct nft_regs * regs, const struct nft_pktinfo * pkt)
 {
     <...
- LOOPBACK_IFINDEX
+ nft_in(pkt)->ifindex
     ...>
 }
//# pattern-3, witnesses: 2
@r2@
identifier i, fn;
@@
struct xt_match i = {
    .match = fn,
};
@@
typedef bool;
identifier par;
identifier skb;
@@
 bool rpfilter_mt(const struct sk_buff * skb, struct xt_action_param * par)
 {
     <...
- rpfilter_is_local(skb)
+ rpfilter_is_loopback(skb, xt_in(par))
     ...>
 }
