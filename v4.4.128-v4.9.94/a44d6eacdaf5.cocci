//# pattern-1, witnesses: 3
@@
expression E0;
@@
- tcp_sk(E0)->segs_in += max_t(, 1);
+ tcp_segs_in(tcp_sk(E0), skb);
