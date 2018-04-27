//# pattern-1, witnesses: 9
@@
expression E1;
expression E11;
expression E6;
expression E7;
expression E8;
expression E9;
expression EC3;
expression F10;
expression IL2;
expression IL5;
expression S4;
expression V0;
@@
- nf_ct_helper_init(&V0[E1], IL2, EC3, S4, IL5, ports[i], E6, E7, E8, E9, F10, E11, THIS_MODULE)
+ nf_ct_helper_init(&V0[E1], IL2, EC3, S4, IL5, ports[i], E6, E7, E8, F10, E11, THIS_MODULE)
//# pattern-5, witnesses: 2
@@
identifier s;
@@
 struct nf_conntrack_helper s = {
-    .data_len = sizeof(unsigned long),
 };
