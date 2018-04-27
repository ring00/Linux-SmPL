//# pattern-2, witnesses: 2
@@
@@
- param.crr_id = i
+ param.crr_id = htonl(i)
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- E0.err
+ E0.u32
