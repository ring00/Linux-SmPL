//# pattern-2, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
@@
- af_ops->send_synack(E0, E1, &fl, req, E2, E3, E4)
+ af_ops->send_synack(E0, E1, &fl, req, E3, E4)
