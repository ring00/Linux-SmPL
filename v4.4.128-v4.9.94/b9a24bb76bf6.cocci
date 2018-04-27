//# pattern-10, witnesses: 5
@@
expression E1;
expression EC0;
@@
- tcf_exts_init(&e, EC0, E1);
+ err = tcf_exts_init(&e, EC0, E1);
+ if (err < 0) {
+ }
//# pattern-4, witnesses: 2
@@
expression E1;
expression EC0;
@@
- tcf_exts_init(&fnew->exts, EC0, E1);
+ err = tcf_exts_init(&fnew->exts, EC0, E1);
+ if (err < 0) {
+ }
