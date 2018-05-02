//# pattern-1, witnesses: 13
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- E0 < rdma_start_port(E1) || E2 > rdma_end_port(E3)
+ !rdma_is_port_valid(E1, E0)
