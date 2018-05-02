//# pattern-3, witnesses: 29
@@
expression E1;
expression V0;
@@
- idr_remove_uobj(&V0, E1)
+ idr_remove_uobj(E1)
//# pattern-6, witnesses: 13
@@
expression E1;
expression E2;
expression V0;
@@
- idr_write_uobj(&V0, E1, E2)
+ idr_write_uobj(E1, E2)
//# pattern-5, witnesses: 12
@@
expression E1;
expression V0;
@@
- idr_add_uobj(&V0, E1)
+ idr_add_uobj(E1)
//# pattern-4, witnesses: 7
@@
expression E2;
identifier PV1;
expression V0;
@@
- idr_read_obj(&V0, PV1, context, E2)
+ idr_read_obj(PV1, context, E2)
//# pattern-17, witnesses: 7
@@
expression V0;
@@
- idr_destroy(&V0);
