//# pattern-4, witnesses: 2
@@
expression V0;
expression V1;
@@
- ret = nf_register_hooks(V0, ARRAY_SIZE(V1));
- if (ret < 0) {
- pr_err;
- }
- if (ret < 0) {
- }
+ if (ret < 0) {
+ }
//# pattern-5, witnesses: 2
@@
expression V0;
expression V1;
@@
- nf_unregister_hooks(V0, ARRAY_SIZE(V1));
