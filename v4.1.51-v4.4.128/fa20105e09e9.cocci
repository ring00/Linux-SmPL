//# pattern-3, witnesses: 11
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- rdma_create_id(E0, E1, E2, E3)
+ rdma_create_id(&init_net, E0, E1, E2, E3)
//# pattern-12, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- rdma_create_id(E0, E1, E2->ps, E3)
+ rdma_create_id(net, E0, E1, E2->ps, E3)
