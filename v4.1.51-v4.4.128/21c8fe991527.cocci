//# pattern-1, witnesses: 2
@@
expression E0;
identifier fn;
identifier sk;
@@
 void fn(struct sock * sk)
 {
     <...
- inet_csk_rto_backoff(icsk, E0)
+ tcp_probe0_when(sk, E0)
     ...>
 }
