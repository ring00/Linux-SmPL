//# pattern-5, witnesses: 2
@@
identifier sk;
identifier skb;
@@
 int selinux_socket_sock_rcv_skb(struct sock * sk, struct sk_buff * skb)
 {
     <...
- selinux_netlbl_err(skb, err, 0)
+ selinux_netlbl_err(skb, family, err, 0)
     ...>
 }
