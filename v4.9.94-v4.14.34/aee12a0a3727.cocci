//# pattern-4, witnesses: 4
@@
expression V0;
@@
- int ret = ret;
- ret = register_pernet_subsys(&V0);
- return ret;
+ return register_pernet_subsys(&V0);
//# pattern-1, witnesses: 2
@@
expression V0;
expression V1;
@@
- nf_unregister_hooks(V0, ARRAY_SIZE(V1));
