//# pattern-1, witnesses: 2
@@
identifier PV0;
@@
- __wsum delta = delta;
- if (unlikely(skb->ip_summed != CHECKSUM_COMPLETE)) {
- __skb_checksum_complete(skb);
- }
- delta = remcsum_adjust(PV0 + hdrlen, skb->csum, start, offset);
- skb->csum = csum_add(skb->csum, delta);
+ skb_remcsum_process(skb, PV0 + hdrlen, start, offset);
//# pattern-2, witnesses: 2
@@
identifier PV0;
@@
- __wsum delta = delta;
- delta = remcsum_adjust(PV0 + hdrlen, NAPI_GRO_CB(skb)->csum, start, offset);
- skb->csum = csum_add(skb->csum, delta);
- NAPI_GRO_CB(skb)->csum = csum_add(NAPI_GRO_CB(skb)->csum, delta);
+ skb_gro_remcsum_process(skb, PV0 + hdrlen, start, offset);
