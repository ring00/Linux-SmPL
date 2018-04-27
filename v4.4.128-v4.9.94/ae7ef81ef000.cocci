//# pattern-2, witnesses: 3
@@
expression E0;
typedef bool;
identifier fn;
identifier mtu;
identifier skb;
@@
 bool fn(const struct sk_buff * skb, unsigned int mtu)
 {
     <...
- E0 && skb_gso_network_seglen(skb) <= mtu
+ E0 && skb_gso_validate_mtu(skb, mtu)
     ...>
 }
