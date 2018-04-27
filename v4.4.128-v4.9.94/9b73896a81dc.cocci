//# pattern-9, witnesses: 3
@@
identifier mux;
identifier psock;
@@
 void kcm_update_rx_mux_stats(struct kcm_mux * mux, struct kcm_psock * psock)
 {
     <...
- psock->stats
+ psock->strp.stats
     ...>
 }
//# pattern-6, witnesses: 2
@@
identifier i;
identifier len;
identifier psock;
identifier seq;
@@
 void kcm_format_psock(struct kcm_psock * psock, struct seq_file * seq, int i, int * len)
 {
     <...
- psock->stats
+ psock->strp.stats
     ...>
 }
//# pattern-11, witnesses: 2
@@
expression list listE0;
@@
- kcm_rx_msg(listE0)
+ strp_rx_msg(listE0)
