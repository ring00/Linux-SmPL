//# pattern-2, witnesses: 15
@@
expression list listE0;
@@
- e820_add_region(listE0)
+ e820__range_add(listE0)
//# pattern-3, witnesses: 4
@@
expression list listE0;
@@
- e820_remove_range(listE0)
+ e820__range_remove(listE0)
//# pattern-1, witnesses: 3
@@
expression list listE0;
@@
- e820_update_range(listE0)
+ e820__range_update(listE0)
