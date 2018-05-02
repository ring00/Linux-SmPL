//# pattern-3, witnesses: 2
@@
identifier fn;
identifier lport;
identifier netdev;
@@
 int fn(struct fc_lport * lport, struct net_device * netdev)
 {
     <...
- setup_timer(&port->timer, fcoe_queue_timer, lport)
+ timer_setup()
     ...>
 }
