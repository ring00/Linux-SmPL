//# pattern-4, witnesses: 2
@@
identifier fn;
identifier inode;
identifier wb;
@@
 void fn(struct inode * inode, struct bdi_writeback * wb)
 {
     <...
- assert_spin_locked(&wb->list_lock);
     ...>
 }
//# pattern-5, witnesses: 2
@@
expression ME0;
identifier fn;
identifier inode;
identifier wb;
@@
 void fn(struct inode * inode, struct bdi_writeback * wb)
 {
     <...
- list_move(&inode->i_wb_list, &ME0)
+ inode_wb_list_move_locked(inode, wb, &ME0)
     ...>
 }
