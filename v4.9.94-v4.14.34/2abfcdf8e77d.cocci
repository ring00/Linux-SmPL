//# pattern-2, witnesses: 9
@@
@@
- kmemcheck_annotate_bitfield;
//# pattern-8, witnesses: 3
@@
expression E0;
expression E1;
@@
- kmemcheck_mark_initialized(E0, E1);
//# pattern-1, witnesses: 2
@@
expression E0;
@@
- if (kmemcheck_enabled && E0) {
- }
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- kmemcheck_free_shadow(page, E0);
//# pattern-6, witnesses: 2
@@
expression E0;
expression E1;
@@
- if (!kmemcheck_is_obj_initialized(E0, E1)) {
- }
//# pattern-9, witnesses: 2
@@
@@
- kmemcheck_annotate_variable;
