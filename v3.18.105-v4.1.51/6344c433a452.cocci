//# pattern-1, witnesses: 7
@@
expression E0;
@@
- proc_free_inum(E0->ns.inum)
+ ns_free_inum(&E0->ns)
//# pattern-2, witnesses: 6
@@
expression E0;
@@
- proc_alloc_inum(&E0->ns.inum)
+ ns_alloc_inum(&E0->ns)
