//# pattern-3, witnesses: 3
@@
@@
- netdev_alloc_skb_ip_align(rx_ring->netdev, 256)
+ napi_alloc_skb(&rx_ring->q_vector->napi, 256)
