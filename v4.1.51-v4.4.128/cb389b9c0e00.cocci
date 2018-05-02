//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct block_device_operations i = {
    .direct_access = fn,
};
@@
identifier bdev;
identifier kaddr;
identifier pfn;
identifier r0.fn;
identifier sector;
typedef sector_t;
identifier size;
@@
- long fn(struct block_device * bdev, sector_t sector, void ** kaddr, unsigned long * pfn, long size)
+ long fn(struct block_device * bdev, sector_t sector, void ** kaddr, unsigned long * pfn)
 { ... }
