//# pattern-2, witnesses: 2
@@
expression E2;
expression ME0;
identifier PV1;
@@
- encode_attrs(xdr, ME0, PV1->label, E2)
+ encode_attrs(xdr, ME0, PV1->label, E2, false)
