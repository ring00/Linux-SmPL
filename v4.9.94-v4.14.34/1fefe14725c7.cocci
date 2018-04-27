//# pattern-7, witnesses: 4
@@
expression V0;
expression V1;
expression V2;
@@
- int err = err;
- err = nf_register_hooks(V0, ARRAY_SIZE(V1));
- err = xt_register_target(&V2);
- return 0;
+ return xt_register_target(&V2);
//# pattern-3, witnesses: 2
@@
identifier s;
@@
 struct nf_hook_ops [2] s = {
 };
//# pattern-4, witnesses: 2
@@
expression V0;
expression V1;
@@
- nf_unregister_hooks(V0, ARRAY_SIZE(V1));
//# pattern-9, witnesses: 2
@@
expression V0;
expression V1;
expression V2;
@@
- int err = err;
- err = nf_register_hooks(V0, ARRAY_SIZE(V1));
- if (err < 0) {
- }
- err = xt_register_target(&V2);
- return 0;
+ return xt_register_target(&V2);
