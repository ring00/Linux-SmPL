//# pattern-1, witnesses: 12
@@
expression E0;
@@
- mark_page_accessed(E0);
//# pattern-11, witnesses: 2
@@
@@
- page = find_get_page(inode->i_mapping, pnum);
- page = find_get_page(inode->i_mapping, pnum);
- mark_page_accessed(page);
+ page = find_get_page_flags(inode->i_mapping, pnum, FGP_ACCESSED);
+ page = find_get_page_flags(inode->i_mapping, pnum, FGP_ACCESSED);
