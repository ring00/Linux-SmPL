//# pattern-4, witnesses: 8
@@
expression E0;
@@
- atomic_inc(&E0->_count)
+ page_ref_inc(E0)
//# pattern-1, witnesses: 7
@@
expression E0;
@@
- atomic_read(&E0->_count)
+ page_ref_count(E0)
//# pattern-8, witnesses: 5
@@
expression E0;
@@
- atomic_add(E0, &page->_count)
+ page_ref_add(page, E0)
//# pattern-2, witnesses: 3
@@
expression list listE0;
@@
- page_unfreeze_refs(listE0)
+ page_ref_unfreeze(listE0)
//# pattern-7, witnesses: 3
@@
expression E0;
@@
- atomic_set(&page->_count, E0)
+ set_page_count(page, E0)
//# pattern-6, witnesses: 2
@@
expression list listE0;
@@
- page_freeze_refs(listE0)
+ page_ref_freeze(listE0)
