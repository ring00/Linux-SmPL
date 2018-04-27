//# pattern-1, witnesses: 2
@@
@@
- return 1;
//# pattern-2, witnesses: 2
@@
statement S0;
identifier fn;
identifier sk;
identifier skb;
@@
 int fn(struct sock * sk, struct sk_buff * skb)
 {
     <...
- if (skb->len > sizeof(unsigned long) && encap_rcv) { S0 }
+ if (encap_rcv) { S0 }
     ...>
 }
