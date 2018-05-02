//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier bus;
identifier r0.fn;
@@
- void fn(struct bcma_bus * bus)
+ void fn(struct bcma_drv_pci * pc)
 {
     <...
- pc = &bus->drv_pci[0];
     ...>
 }
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier pc;
identifier r1.fn;
@@
 void fn(struct bcma_drv_pci * pc)
 {
     <...
- if (bus->hosttype != BCMA_HOSTTYPE_PCI) {
- return;
- }
     ...>
 }
