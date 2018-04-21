//# pattern-1, witnesses: 5
@@
expression E0;
expression E1;
expression E2;
@@
- osd_req_op_init(E0, E1, E2)
+ osd_req_op_init(E0, E1, E2, 0)
//# pattern-2, witnesses: 5
@@
expression E0;
@@
- _osd_req_op_init(osd_req, which, E0)
+ _osd_req_op_init(osd_req, which, E0, 0)
