//# pattern-1, witnesses: 8
@@
identifier PV0;
@@
- struct ib_gid_table ** ports_table = PV0->cache.gid_cache;
//# pattern-8, witnesses: 8
@@
expression E0;
identifier PV1;
identifier PV2;
@@
- E0 = ports_table[port - rdma_start_port(PV1)]
+ E0 = PV2->cache.ports[port - rdma_start_port(PV1)].gid
//# pattern-6, witnesses: 5
@@
expression E0;
identifier PV1;
@@
- E0 = device->cache.pkey_cache[PV1 - rdma_start_port(device)]
+ E0 = device->cache.ports[PV1 - rdma_start_port(device)].pkey
//# pattern-2, witnesses: 2
@@
expression E1;
identifier PV0;
identifier PV2;
@@
- device->cache.port_state_cache[PV0 - rdma_start_port(device)] = E1
+ device->cache.ports[PV2 - rdma_start_port(device)].port_state = E1
//# pattern-5, witnesses: 2
@@
expression E0;
identifier PV1;
@@
- E0 = device->cache.lmc_cache[PV1 - rdma_start_port(device)]
+ E0 = device->cache.ports[PV1 - rdma_start_port(device)].lmc
//# pattern-11, witnesses: 2
@@
identifier fn;
identifier ib_dev;
identifier s;
@@
 - struct ib_gid_table ** s = {
+ struct ib_gid_table * s = {
 };
void fn(struct ib_device * ib_dev)
 {
     <...
- struct ib_gid_table ** s = {
+ struct ib_gid_table * s = {
 };
     ...>
 }
//# pattern-13, witnesses: 2
@@
@@
- if (!table) {
- return;
- }
