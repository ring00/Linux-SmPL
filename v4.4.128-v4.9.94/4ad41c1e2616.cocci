//# pattern-1, witnesses: 2
@@
expression E1;
expression IL0;
identifier bond;
identifier reporting;
identifier slave_dev;
@@
 int bond_check_dev_link(struct bonding * bond, struct net_device * slave_dev, int reporting)
 {
     <...
- IOCTL(slave_dev, &ifr, IL0) == E1
+ ioctl(slave_dev, &ifr, IL0) == E1
     ...>
 }
