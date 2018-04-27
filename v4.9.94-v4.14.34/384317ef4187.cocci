//# pattern-2, witnesses: 2
@@
expression E0;
identifier ifindex;
identifier msg;
identifier msg_head;
identifier sk;
@@
 int bcm_rx_setup(struct bcm_msg_head * msg_head, struct msghdr * msg, int ifindex, struct sock * sk)
 {
     <...
- can_rx_register(&init_net, E0, op->can_id, REGMASK(op->can_id), bcm_rx_handler, op, "bcm", sk)
+ can_rx_register(sock_net(sk), E0, op->can_id, REGMASK(op->can_id), bcm_rx_handler, op, "bcm", sk)
     ...>
 }
//# pattern-3, witnesses: 2
@@
@@
- dev_get_by_index(&init_net, ifindex)
+ dev_get_by_index(sock_net(sk), ifindex)
//# pattern-14, witnesses: 2
@@
expression ME0;
@@
- dev_get_by_index(&init_net, ME0)
+ dev_get_by_index(net, ME0)
