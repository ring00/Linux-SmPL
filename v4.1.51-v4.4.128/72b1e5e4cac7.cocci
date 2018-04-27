//# pattern-2, witnesses: 2
@@
statement S0;
identifier fn;
identifier hooknum;
identifier skb;
@@
 enum ip_defrag_users fn(unsigned int hooknum, struct sk_buff * skb)
 {
     <...
- if (skb->nf_bridge && skb->nf_bridge->mask & BRNF_NF_BRIDGE_PREROUTING) { S0 }
+ if (nf_bridge_in_prerouting(skb)) { S0 }
     ...>
 }
//# pattern-4, witnesses: 2
@@
@@
- nf_bridge->mask &= ~BRNF_NF_BRIDGE_PREROUTING;
+ nf_bridge->in_prerouting = 0;
