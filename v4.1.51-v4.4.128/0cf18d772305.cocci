//# pattern-5, witnesses: 22
@@
expression list listE0;
@@
- start_port(listE0)
+ rdma_start_port(listE0)
//# pattern-1, witnesses: 12
@@
expression list listE0;
@@
- end_port(listE0)
+ rdma_end_port(listE0)
//# pattern-4, witnesses: 2
@@
expression ME1;
expression ME2;
expression V0;
expression V3;
identifier device;
identifier port;
typedef u8;
@@
 void ib_cache_update(struct ib_device * device, u8 port)
 {
     <...
- V0 = ME1[port - start_port(device)];
- ME2[port - start_port(device)] = V3;
+ V0 = ME2[port - rdma_start_port(device)];
+ ME1[port - rdma_start_port(device)] = V3;
     ...>
 }
