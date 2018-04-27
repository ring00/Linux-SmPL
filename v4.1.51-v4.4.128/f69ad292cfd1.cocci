//# pattern-3, witnesses: 3
@@
expression E0;
@@
- skb_shinfo(E0)->gso_size
+ TCP_SKB_CB(E0)->tcp_gso_size
