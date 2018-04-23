//# pattern-1, witnesses: 19
@@
identifier PV0;
@@
- PV0->nfct
+ skb_nfct(PV0)
//# pattern-2, witnesses: 2
@@
@@
- NF_CT_ASSERT(skb->nfct == NULL)
+ NF_CT_ASSERT(!skb_nfct(skb))
