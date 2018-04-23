//# pattern-1, witnesses: 2
@@
expression E0;
identifier inst_size;
identifier net;
identifier peer_portid;
identifier pkt_size;
typedef u32;
@@
 struct sk_buff * nfulnl_alloc_skb(struct net * net, u32 peer_portid, unsigned int inst_size, unsigned int pkt_size)
 {
     <...
- nfnetlink_alloc_skb(net, E0, peer_portid, GFP_ATOMIC)
+ alloc_skb(E0, GFP_ATOMIC)
     ...>
 }
