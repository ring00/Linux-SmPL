//# pattern-1, witnesses: 3
@@
identifier fn;
expression list listE0;
identifier lport;
@@
 void fn(struct fc_lport * lport)
 {
     <...
- lport->tt.rport_flush_queue(listE0)
+ fc_rport_flush_queue(listE0)
     ...>
 }
