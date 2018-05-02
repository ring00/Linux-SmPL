//# pattern-2, witnesses: 2
@@
identifier PV0;
@@
- if (skb->remcsum_offload) {
- skb->remcsum_offload = 0;
- return PV0;
- }
