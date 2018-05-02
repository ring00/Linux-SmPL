//# pattern-11, witnesses: 9
@@
expression list listE0;
@@
- iounmap(listE0)
+ memunmap(listE0)
//# pattern-3, witnesses: 7
@@
expression E0;
expression E1;
@@
- ioremap_cache(E0, E1)
+ memremap(E0, E1, MEMREMAP_WB)
//# pattern-7, witnesses: 5
@@
expression list listE0;
@@
- early_iounmap(listE0)
+ early_memunmap(listE0)
//# pattern-6, witnesses: 4
@@
expression list listE0;
@@
- early_ioremap(listE0)
+ early_memremap(listE0)
