//# pattern-2, witnesses: 2
@@
expression E1;
identifier PV0;
@@
- radix_tree_next_hole(&mapping->page_tree, PV0 + 1, E1)
+ page_cache_next_hole(mapping, PV0 + 1, E1)
