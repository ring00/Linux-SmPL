//# pattern-5, witnesses: 2
@@
expression F0;
identifier inode;
@@
 void inode_wb_list_del(struct inode * inode)
 {
     <...
- struct backing_dev_info * bdi = inode_to_bdi(inode);
- F0(&bdi->wb.list_lock);
+ struct bdi_writeback * wb = inode_to_wb(inode);
+ F0(&wb->list_lock);
     ...>
 }
