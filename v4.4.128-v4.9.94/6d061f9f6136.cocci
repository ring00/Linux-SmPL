//# pattern-1, witnesses: 2
@@
expression E0;
@@
- atomic_inc(&E0->_count)
+ page_ref_inc(E0)
