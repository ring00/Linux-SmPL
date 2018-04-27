//# pattern-2, witnesses: 2
@@
statement S0;
@@
- if (sk->__sk_common.skc_prot->get_port(sk, snum)) { S0 }
+ if (snum || !inet->bind_address_no_port && sk->__sk_common.skc_prot->get_port(sk, snum)) { S0 }
