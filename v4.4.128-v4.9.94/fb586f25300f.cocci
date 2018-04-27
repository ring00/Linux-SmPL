//# pattern-1, witnesses: 2
@@
@@
- sk->sk_data_ready(sk);
+ sctp_sk(sk)->pending_data_ready = 1;
