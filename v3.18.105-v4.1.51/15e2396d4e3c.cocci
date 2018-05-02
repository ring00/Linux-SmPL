//# pattern-2, witnesses: 2
@@
identifier PV0;
@@
- skb_gro_remcsum_process(skb, PV0 + hdrlen, start, offset, grc)
+ skb_gro_remcsum_process(skb, PV0 + hdrlen, start, offset, grc, true)
//# pattern-3, witnesses: 2
@@
identifier PV0;
@@
- skb_remcsum_process(skb, PV0 + hdrlen, start, offset)
+ skb_remcsum_process(skb, PV0 + hdrlen, start, offset, true)
