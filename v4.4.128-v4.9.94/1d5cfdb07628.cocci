//# pattern-2, witnesses: 5
@@
expression E0;
expression E1;
@@
- pcpu_mem_free(E0, E1)
+ pcpu_mem_free(E0)
//# pattern-7, witnesses: 3
@@
@@
- if (jffs2_blocks_use_vmalloc(c)) {
- vfree(c->blocks);
- }
+ kvfree(c->blocks)
//# pattern-8, witnesses: 3
@@
expression BO0;
expression E1;
expression E2;
@@
- if (BO0) {
- kfree(E1);
- }
+ kvfree(E2);
