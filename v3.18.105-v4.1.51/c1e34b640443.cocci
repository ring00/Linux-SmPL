//# pattern-1, witnesses: 3
@@
@@
- &conn->sess->ttt_lock;
//# pattern-2, witnesses: 3
@@
expression BO0;
expression E1;
@@
- if (BO0) {
- E1->targ_xfer_tag = _ ++conn->sess->targ_xfer_tag;
- }
//# pattern-3, witnesses: 2
@@
@@
- spin_lock_bh(&conn->sess->ttt_lock);
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- E0 = _ ++conn->sess->targ_xfer_tag
+ E0 = session_get_next_ttt(conn->sess)
