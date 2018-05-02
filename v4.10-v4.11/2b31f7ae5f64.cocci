//# pattern-1, witnesses: 6
@@
@@
- eseg->inline_hdr_start
+ eseg->inline_hdr.start
//# pattern-2, witnesses: 3
@@
expression E0;
@@
- eseg->inline_hdr_sz = E0
+ eseg->inline_hdr.sz = E0
