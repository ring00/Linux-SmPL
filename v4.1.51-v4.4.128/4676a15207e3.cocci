//# pattern-1, witnesses: 4
@@
@@
- dev->tx_queue_len = 0;
+ dev->priv_flags |= IFF_NO_QUEUE;
