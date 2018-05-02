//# pattern-1, witnesses: 16
@@
expression E0;
expression list listE1;
@@
- rdtscll(E0);
+ E0 = native_read_tsc(listE1);
