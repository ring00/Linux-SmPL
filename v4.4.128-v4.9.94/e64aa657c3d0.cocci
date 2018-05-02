//# pattern-1, witnesses: 5
@@
expression E2;
expression E3;
expression ME0;
expression ME1;
@@
- target_alloc_sgl(&ME0, &ME1, E2, E3)
+ target_alloc_sgl(&ME0, &ME1, E2, E3, false)
//# pattern-3, witnesses: 4
@@
expression list listE0;
@@
- transport_free_sgl(listE0)
+ target_free_sgl(listE0)
