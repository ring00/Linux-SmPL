//# pattern-3, witnesses: 2
@@
expression E0;
expression V1;
expression V2;
@@
- E0 = V1->size - 1 >> 3 + 1 + V2->id > 0
+ E0 = hid_report_len(V2)
