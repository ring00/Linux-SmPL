//# pattern-1, witnesses: 2
@@
identifier fn;
identifier skb;
@@
 int fn(struct sk_buff * skb)
 {
     <...
- unlikely(sk_add_backlog(sk, skb, sk->sk_rcvbuf + sk->sk_sndbuf))
+ tcp_add_backlog(sk, skb)
     ...>
 }
//# pattern-2, witnesses: 2
@@
@@
- __NET_INC_STATS(net, LINUX_MIB_TCPBACKLOGDROP);
//# pattern-3, witnesses: 2
@@
@@
- bh_unlock_sock(sk);
