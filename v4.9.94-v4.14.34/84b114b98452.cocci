//# pattern-2, witnesses: 2
@@
expression E0;
identifier fn;
identifier sk;
identifier skb;
@@
 struct sock * fn(struct sock * sk, struct sk_buff * skb)
 {
     <...
- tcp_get_cookie_sock(sk, skb, req, E0)
+ tcp_get_cookie_sock(sk, skb, req, E0, tsoff)
     ...>
 }
