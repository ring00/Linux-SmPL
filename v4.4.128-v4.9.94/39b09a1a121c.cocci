//# pattern-1, witnesses: 2
@@
expression E0;
@@
- svc_rdma_post_recv(E0)
+ svc_rdma_post_recv(E0, GFP_KERNEL)
