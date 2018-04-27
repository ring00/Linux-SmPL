//# pattern-4, witnesses: 3
@@
@@
- skb->tc_verd = 0;
+ skb_reset_tc(skb);
//# pattern-1, witnesses: 2
@@
@@
- G_TC_FROM(skb->tc_verd)
+ skb->tc_from
//# pattern-8, witnesses: 2
@@
identifier a;
identifier res;
identifier skb;
@@
 int tcf_ife_encode(struct sk_buff * skb, const struct tc_action * a, struct tcf_result * res)
 {
     <...
- u32 at = G_TC_AT(skb->tc_verd);
- if (!at & AT_EGRESS) {
- }
+ if (skb_at_tc_ingress(skb)) {
+ }
     ...>
 }
