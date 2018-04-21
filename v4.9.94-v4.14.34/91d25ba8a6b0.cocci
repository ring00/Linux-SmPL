//# pattern-3, witnesses: 3
@@
expression E0;
@@
- put_locked_mapping_entry(mapping, E0, entry)
+ put_locked_mapping_entry(mapping, E0)
//# pattern-16, witnesses: 3
@@
expression E0;
expression V1;
@@
- E0 || !radix_tree_exceptional_entry(V1)
+ E0 || WARN_ON_ONCE(!radix_tree_exceptional_entry(V1))
