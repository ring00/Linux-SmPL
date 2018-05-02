//# pattern-4, witnesses: 2
@@
expression E0;
identifier dev;
identifier id;
identifier res;
@@
 struct pmem_device * pmem_alloc(struct device * dev, struct resource * res, int id)
 {
     <...
- pmem = kzalloc(sizeof(unsigned long), GFP_KERNEL);
- if (!pmem->virt_addr) {
- E0;
- }
+ pmem = devm_kzalloc(dev, sizeof(unsigned long), GFP_KERNEL);
+ if (!pmem->virt_addr) {
+ }
     ...>
 }
