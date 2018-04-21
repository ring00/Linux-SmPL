//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct block_device_operations i = {
    .direct_access = fn,
};
@@
expression BO0;
expression IL1;
identifier bdev;
identifier kaddr;
identifier pfn;
identifier sector;
typedef sector_t;
@@
- int brd_direct_access(struct block_device * bdev, sector_t sector, void ** kaddr, unsigned long * pfn)
+ long brd_direct_access(struct block_device * bdev, sector_t sector, void ** kaddr, unsigned long * pfn, long size)
 {
     <...
- if (BO0) {
- return -IL1;
- }
     ...>
 }
