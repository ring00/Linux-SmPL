//# pattern-2, witnesses: 7
@@
identifier PV0;
@@
- atomic_inc(&PV0->sc_dma_used)
+ svc_rdma_count_mappings(PV0, ctxt)
