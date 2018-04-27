//# pattern-1, witnesses: 8
@@
expression E0;
expression E1;
@@
- rhashtable_walk_init(E0, &E1)
+ rhashtable_walk_init(E0, &E1, GFP_KERNEL)
