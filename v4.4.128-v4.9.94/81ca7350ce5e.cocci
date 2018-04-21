//# pattern-2, witnesses: 6
@@
expression E0;
@@
- F2FS_I(E0)
+ E0
//# pattern-7, witnesses: 4
@@
@@
- ADDRS_PER_PAGE(dn.node_page, F2FS_I(inode))
+ ADDRS_PER_PAGE(dn.node_page, inode)
//# pattern-1, witnesses: 2
@@
identifier dn;
identifier fn;
@@
 void fn(struct dnode_of_data * dn)
 {
     <...
- struct f2fs_inode_info * fi = F2FS_I(dn->inode);
- fofs = start_bidx_of_node(ofs_of_node(dn->node_page), fi) + dn->ofs_in_node;
+ fofs = start_bidx_of_node(ofs_of_node(dn->node_page), dn->inode) + dn->ofs_in_node;
     ...>
 }
