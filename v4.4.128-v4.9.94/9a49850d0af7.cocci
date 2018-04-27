//# pattern-1, witnesses: 2
@@
@@
- sk->sk_route_caps & NETIF_F_CSUM_MASK
+ sk_check_csum_caps(sk)
