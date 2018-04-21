//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct iomap_ops i = {
    .iomap_begin = fn,
};
@@
identifier flags;
identifier inode;
identifier iomap;
identifier length;
typedef loff_t;
identifier offset;
identifier r0.fn;
@@
 int fn(struct inode * inode, loff_t offset, loff_t length, unsigned int flags, struct iomap * iomap)
 {
     <...
- iomap->bdev = inode->i_sb->s_bdev;
+ struct block_device * bdev = bdev;
+ bdev = inode->i_sb->s_bdev;
+ iomap->bdev = bdev;
+ if (blk_queue_dax(bdev->bd_queue)) {
+ iomap->dax_dev = dax_get_by_host(bdev->bd_disk->disk_name);
+ }
     ...>
 }
