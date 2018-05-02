//# pattern-1, witnesses: 10
@@
expression list listE0;
@@
- f2fs_kvzalloc(listE0)
+ kvzalloc(listE0)
//# pattern-3, witnesses: 4
@@
expression BO0;
expression E1;
expression E2;
@@
- kvm_kvzalloc(BO0)
+ kvzalloc(E1 BO0 E2, GFP_KERNEL)
//# pattern-5, witnesses: 2
@@
expression list listE0;
@@
- ext4_kvzalloc(listE0)
+ kvzalloc(listE0)
//# pattern-6, witnesses: 2
@@
expression list listE0;
@@
- f2fs_kvmalloc(listE0)
+ kvmalloc(listE0)
