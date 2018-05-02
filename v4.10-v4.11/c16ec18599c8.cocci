//# pattern-1, witnesses: 4
@@
identifier fn;
identifier net;
identifier sk;
identifier skb;
@@
 int fn(struct net * net, struct sock * sk, struct sk_buff * skb)
 {
     <...
- dst_neigh_output(dst, neigh, skb)
+ neigh_output(neigh, skb)
     ...>
 }
