//# pattern-1, witnesses: 2
@@
identifier fp;
expression list listE0;
identifier lport;
identifier mp;
@@
 void fc_exch_recv_req(struct fc_lport * lport, struct fc_exch_mgr * mp, struct fc_frame * fp)
 {
     <...
- lport->tt.lport_recv(listE0)
+ fc_lport_recv(listE0)
     ...>
 }
