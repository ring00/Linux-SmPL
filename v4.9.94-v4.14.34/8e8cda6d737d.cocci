//# pattern-29, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
expression E4;
expression F3;
@@
- can_rx_unregister(E0, E1->can_id, E2, F3, E4)
+ can_rx_unregister(&init_net, E0, E1->can_id, E2, F3, E4)
//# pattern-5, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
expression E4;
expression E6;
expression F3;
expression S5;
@@
- can_rx_register(E0, E1->can_id, E2, F3, E4, S5, E6)
+ can_rx_register(&init_net, E0, E1->can_id, E2, F3, E4, S5, E6)
//# pattern-7, witnesses: 3
@r0@
identifier i, fn;
@@
struct file_operations i = {
    .open = fn,
};
@@
expression E1;
expression F0;
identifier file;
identifier inode;
identifier r0.fn;
@@
- int fn(struct inode * inode, struct file * file)
+ int fn(struct inode * inode, struct file * file)
 {
     <...
- single_open(file, F0, E1)
+ single_open_net(inode, file, F0)
     ...>
 }
//# pattern-45, witnesses: 3
@@
expression E0;
@@
- dev_get_by_index(&init_net, E0)
+ dev_get_by_index(sock_net(sk), E0)
//# pattern-4, witnesses: 2
@@
expression E0;
expression E1;
@@
- raw_enable_filters(dev, sk, E0, E1)
+ raw_enable_filters(sock_net(sk), dev, sk, E0, E1)
//# pattern-31, witnesses: 2
@@
identifier dev;
identifier fn;
identifier orig_dev;
identifier pt;
identifier skb;
@@
 int fn(struct sk_buff * skb, struct net_device * dev, struct packet_type * pt, struct net_device * orig_dev)
 {
     <...
- if (unlikely(!net_eq(dev_net(dev), &init_net))) {
- }
     ...>
 }
//# pattern-46, witnesses: 2
@@
@@
- raw_disable_allfilters(NULL, sk)
+ raw_disable_allfilters(sock_net(sk), NULL, sk)
