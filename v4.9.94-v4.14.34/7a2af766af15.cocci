//# pattern-7, witnesses: 4
@@
@@
- datablock_addr(dn.node_page, dn.ofs_in_node)
+ datablock_addr(dn.inode, dn.node_page, dn.ofs_in_node)
//# pattern-8, witnesses: 3
@@
@@
- datablock_addr(dn->node_page, dn->ofs_in_node)
+ datablock_addr(dn->inode, dn->node_page, dn->ofs_in_node)
