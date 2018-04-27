//# pattern-3, witnesses: 2
@@
expression E0;
expression ME1;
identifier rdma_argp;
identifier rdma_resp;
identifier rdma_type;
identifier xprt;
@@
 void svc_rdma_xdr_encode_reply_header(struct svcxprt_rdma * xprt, struct rpcrdma_msg * rdma_argp, struct rpcrdma_msg * rdma_resp, enum rpcrdma_proc rdma_type)
 {
     <...
- E0 = htonl(ME1)
+ E0 = ME1
     ...>
 }
