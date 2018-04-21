//# pattern-1, witnesses: 5
@@
expression list listE0;
@@
- mb_cache_entry_delete_block(listE0)
+ mb_cache_entry_delete(listE0)
//# pattern-5, witnesses: 4
@@
expression E0;
@@
- E0->e_block
+ E0->e_value
