//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct se_subsystem_api i = {
    .configure_device = fn,
};
@@
identifier dev;
identifier r0.fn;
@@
 int fn(struct se_device * dev)
 {
     <...
- dev->dev_attrib.unmap_granularity_alignment = q->limits.discard_alignment;
     ...>
 }
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct se_subsystem_api i = {
    .configure_device = fn,
};
@@
identifier dev;
identifier r1.fn;
@@
 int fn(struct se_device * dev)
 {
     <...
- dev->dev_attrib.unmap_granularity = q->limits.discard_granularity >> 9;
     ...>
 }
//# pattern-4, witnesses: 2
@r2@
identifier i, fn;
@@
struct se_subsystem_api i = {
    .configure_device = fn,
};
@@
identifier dev;
identifier r2.fn;
@@
 int fn(struct se_device * dev)
 {
     <...
- dev->dev_attrib.max_unmap_lba_count = q->limits.max_discard_sectors;
     ...>
 }
//# pattern-7, witnesses: 2
@r3@
identifier fn;
expression P0, P2;
@@
sbc_execute_unmap(P0, fn, P2)
@@
identifier cmd;
identifier lba;
identifier nolb;
identifier priv;
identifier r3.fn;
typedef sector_t;
typedef sense_reason_t;
@@
 sense_reason_t fn(struct se_cmd * cmd, void * priv, sector_t lba, sector_t nolb)
 {
     <...
- blkdev_issue_discard(bdev, lba, nolb, GFP_KERNEL, 0)
+ blkdev_issue_discard(bdev, target_to_linux_sector(dev, lba), target_to_linux_sector(dev, nolb), GFP_KERNEL, 0)
     ...>
 }
