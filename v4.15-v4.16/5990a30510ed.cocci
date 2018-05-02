//# pattern-3, witnesses: 7
@@
expression E0;
@@
- E0->skb_array
+ E0->ring
//# pattern-21, witnesses: 6
@@
expression E0;
@@
- E0->tx_array
+ E0->tx_ring
//# pattern-2, witnesses: 4
@@
expression list listE0;
@@
- skb_array_produce(listE0)
+ ptr_ring_produce(listE0)
//# pattern-8, witnesses: 4
@@
expression E0;
@@
- E0->rx_array
+ E0->rx_ring
//# pattern-10, witnesses: 4
@@
expression list listE0;
@@
- skb_array_consume(listE0)
+ ptr_ring_consume(listE0)
//# pattern-4, witnesses: 2
@@
expression list listE0;
@@
- skb_array_init(listE0)
+ ptr_ring_init(listE0)
//# pattern-11, witnesses: 2
@@
@@
- skb_array_resize_multiple(arrays, n, dev->tx_queue_len, GFP_KERNEL)
+ ptr_ring_resize_multiple(rings, n, dev->tx_queue_len, GFP_KERNEL, __skb_array_destroy_skb)
//# pattern-15, witnesses: 2
@@
expression list listE0;
@@
- skb_array_empty(listE0)
+ ptr_ring_empty(listE0)
//# pattern-17, witnesses: 2
@@
@@
- struct skb_array ** arrays = arrays;
- arrays = kmalloc_array(n, sizeof(unsigned long), GFP_KERNEL);
- if (!arrays) {
- }
+ struct ptr_ring ** rings = rings;
+ rings = kmalloc_array(n, sizeof(unsigned long), GFP_KERNEL);
+ if (!rings) {
+ }
//# pattern-18, witnesses: 2
@@
@@
- struct skb_array ** arrays = arrays;
- arrays = kmalloc_array(n, sizeof(unsigned long), GFP_KERNEL);
- kfree(arrays);
+ struct ptr_ring ** rings = rings;
+ rings = kmalloc_array(n, sizeof(unsigned long), GFP_KERNEL);
+ kfree(rings);
