//# pattern-2, witnesses: 2
@@
identifier seq;
identifier tp;
typedef u32;
@@
 void tcp_rcv_nxt_update(struct tcp_sock * tp, u32 seq)
 {
     <...
- &tp->syncp;
     ...>
 }
//# pattern-5, witnesses: 2
@@
@@
- &tp->syncp;
