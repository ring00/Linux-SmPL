//# pattern-1, witnesses: 2
@@
identifier fn;
identifier sk;
identifier skb;
@@
 struct sock * fn(struct sock * sk, struct sk_buff * skb)
 {
     <...
- cookie_timestamp_decode(&tcp_opt)
+ cookie_timestamp_decode(sock_net(sk), &tcp_opt)
     ...>
 }
