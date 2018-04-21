//# pattern-1, witnesses: 9
@@
expression E0;
expression E1;
@@
- radix_tree_replace_slot(E0, E1)
+ radix_tree_replace_slot(&mapping->page_tree, E0, E1)
