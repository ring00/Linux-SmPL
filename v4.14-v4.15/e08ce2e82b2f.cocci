//# pattern-4, witnesses: 2
@@
expression E0;
identifier fn;
identifier ib_event;
identifier listen_id;
identifier net_dev;
@@
 struct rdma_id_private * fn(struct rdma_cm_id * listen_id, struct ib_cm_event * ib_event, struct net_device * net_dev)
 {
     <...
- ret = rdma_copy_addr(&E0->addr.dev_addr, net_dev, NULL);
- if (ret) {
- }
+ rdma_copy_addr(&E0->addr.dev_addr, net_dev, NULL);
     ...>
 }
