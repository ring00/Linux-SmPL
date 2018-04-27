//# pattern-1, witnesses: 2
@@
typedef bool;
identifier dev;
identifier q;
identifier root_lock;
identifier skb;
identifier txq;
identifier validate;
@@
 int sch_direct_xmit(struct sk_buff * skb, struct Qdisc * q, struct net_device * dev, struct netdev_queue * txq, spinlock_t * root_lock, bool validate)
 {
     <...
- spin_lock_nested(root_lock, SINGLE_DEPTH_NESTING);
+ spin_lock(root_lock);
     ...>
 }
