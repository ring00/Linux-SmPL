//# pattern-3, witnesses: 4
@@
expression E0;
expression E1;
@@
- vm_normal_page(E0, addr, E1)
+ _vm_normal_page(E0, addr, E1, true)
