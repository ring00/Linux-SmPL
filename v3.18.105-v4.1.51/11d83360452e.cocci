//# pattern-4, witnesses: 2
@@
@@
- mempool_resize(cifs_req_poolp, length + cifs_min_rcv, GFP_KERNEL)
+ mempool_resize(cifs_req_poolp, length + cifs_min_rcv)
