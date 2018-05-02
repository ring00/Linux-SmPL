//# pattern-2, witnesses: 4
@@
expression E0;
expression E1;
@@
- rdma_translate_ip(E0, E1, NULL)
+ rdma_translate_ip(E0, E1)
//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier addr;
identifier dev_addr;
identifier vlan_id;
@@
- int rdma_translate_ip(const struct sockaddr * addr, struct rdma_dev_addr * dev_addr, u16 * vlan_id)
+ int rdma_translate_ip(const struct sockaddr * addr, struct rdma_dev_addr * dev_addr)
 {
     <...
- if (vlan_id) {
- *vlan_id = rdma_vlan_dev_vlan_id(dev);
- }
     ...>
 }
