//# pattern-3, witnesses: 2
@@
identifier fn;
identifier port_dev;
identifier team;
@@
 int fn(struct team * team, struct net_device * port_dev)
 {
     <...
- team_upper_dev_unlink(dev, port_dev)
+ team_upper_dev_unlink(team, port)
     ...>
 }
