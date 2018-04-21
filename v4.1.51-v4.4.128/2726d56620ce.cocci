//# pattern-1, witnesses: 4
@@
expression E1;
identifier PV0;
expression S2;
@@
- seq_path(PV0, &E1->f_path, S2)
+ seq_file_path(PV0, E1, S2)
