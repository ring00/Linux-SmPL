//# pattern-15, witnesses: 3
@@
@@
- TYPERANGE_UTF8
+ TYPERANGE_UTF8
//# pattern-6, witnesses: 2
@@
expression E0;
statement S1;
@@
- if (E0) { S1 }
+ if (E0) { S1 }
//# pattern-11, witnesses: 2
@@
expression ME0;
identifier conn_ops;
@@
 void iscsi_dump_conn_ops(struct iscsi_conn_ops * conn_ops)
 {
     <...
- if (ME0) {
- pr_debug();
- }
     ...>
 }
//# pattern-12, witnesses: 2
@@
identifier conn_ops;
@@
 void iscsi_dump_conn_ops(struct iscsi_conn_ops * conn_ops)
 {
     <...
- pr_debug();
     ...>
 }
//# pattern-21, witnesses: 2
@@
@@
- SET_PSTATE_NEGOTIATE(param)
+ SET_PSTATE_REJECT(param)
