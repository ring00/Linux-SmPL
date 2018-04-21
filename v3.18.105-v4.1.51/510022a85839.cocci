//# pattern-3, witnesses: 3
@@
@@
- set_de_type(de, inode)
+ set_de_type(de, inode->i_mode)
//# pattern-9, witnesses: 2
@@
expression EC0;
statement S1;
identifier current_depth;
identifier dir;
identifier inode;
@@
 void update_parent_metadata(struct inode * dir, struct inode * inode, unsigned int current_depth)
 {
     <...
- if (is_inode_flag_set(F2FS_I(inode), EC0)) { S1 }
+ if (inode && is_inode_flag_set(F2FS_I(inode), EC0)) { S1 }
     ...>
 }
