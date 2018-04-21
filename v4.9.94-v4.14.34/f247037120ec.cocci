//# pattern-1, witnesses: 7
@@
expression E0;
@@
- inline_data_addr(E0)
+ inline_data_addr(inode, E0)
//# pattern-10, witnesses: 5
@@
@@
- MAX_INLINE_DATA
+ MAX_INLINE_DATA(inode)
//# pattern-3, witnesses: 4
@@
expression E0;
@@
- inline_data_addr(E0)
+ inline_data_addr(dir, E0)
//# pattern-8, witnesses: 4
@@
@@
- NULL
+ dir
//# pattern-2, witnesses: 2
@@
@@
- inline_data_addr(ipage)
+ inline_data_addr(inode, ipage)
//# pattern-15, witnesses: 2
@@
@@
- MAX_INLINE_DATA
+ MAX_INLINE_DATA(inode)
