//# pattern-3, witnesses: 7
@@
expression E0;
@@
- E0->node_type == RDMA_NODE_IB_SWITCH
+ rdma_cap_ib_switch(E0)
//# pattern-4, witnesses: 6
@@
expression E0;
@@
- E0->node_type
+ rdma_cap_ib_switch(E0)
//# pattern-6, witnesses: 2
@r0@
identifier i, fn;
@@
struct ib_client i = {
    .add = fn,
};
@@
expression E0;
expression E1;
identifier device;
identifier r0.fn;
@@
 void fn(struct ib_device * device)
 {
     <...
- if (device->node_type == RDMA_NODE_IB_SWITCH) {
- E0 = E1 = 0;
- }
+ E0 = rdma_start_port(device);
+ E1 = rdma_end_port(device);
     ...>
 }
