//# pattern-1, witnesses: 3
@@
expression E1;
expression EC0;
@@
- ibnl_multicast(skb, nlh, EC0, E1)
+ rdma_nl_multicast(skb, EC0, E1)
