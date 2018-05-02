//# pattern-3, witnesses: 2
@@
identifier addr;
identifier length;
identifier nvdimm_bus;
typedef u64;
@@
 int bus_add_poison(struct nvdimm_bus * nvdimm_bus, u64 addr, u64 length)
 {
     <...
- add_poison(nvdimm_bus, addr, length)
+ add_poison(nvdimm_bus, addr, length, GFP_KERNEL)
     ...>
 }
