//# pattern-1, witnesses: 17
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- sock_create_kern(E0, E1, E2, E3)
+ sock_create_kern(&init_net, E0, E1, E2, E3)
