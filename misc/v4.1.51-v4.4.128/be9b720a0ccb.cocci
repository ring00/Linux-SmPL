//# pattern-1, witnesses: 3
@@
expression ME0;
@@
- if (device->ops && ME0) {
- }
//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
@@
- __mei_cl_send(cl, E0, E1)
+ __mei_cl_send(cl, E0, E1, 1)
