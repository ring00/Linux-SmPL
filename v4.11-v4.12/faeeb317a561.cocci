//# pattern-20, witnesses: 3
@@
expression E2;
expression V0;
expression V1;
@@
- struct sockaddr  = V0;
- V1.sa_family = E2->type;
+ struct __kernel_sockaddr_storage ss = ss;
+ ss.ss_family = E2->type;
//# pattern-8, witnesses: 2
@@
identifier bond;
identifier fn;
identifier new_slave;
@@
 int fn(struct bonding * bond, struct slave * new_slave)
 {
     <...
- alb_set_slave_mac_addr(new_slave, bond->dev->dev_addr)
+ alb_set_slave_mac_addr(new_slave, bond->dev->dev_addr, bond->dev->addr_len)
     ...>
 }
//# pattern-9, witnesses: 2
@@
expression E0;
expression E1;
identifier bond;
identifier new_slave;
@@
 void bond_alb_handle_active_change(struct bonding * bond, struct slave * new_slave)
 {
     <...
- ether_addr_copy(E0, E1)
+ bond_hw_addr_copy(E0, E1, new_slave->dev->addr_len)
     ...>
 }
//# pattern-25, witnesses: 2
@@
expression E0;
expression E1;
@@
- ether_addr_copy(E0, E1)
+ bond_hw_addr_copy(E0, E1, rollback_slave->dev->addr_len)
//# pattern-36, witnesses: 2
@@
expression E0;
expression E1;
@@
- ether_addr_copy(E0, E1)
+ bond_hw_addr_copy(E0, E1, slave->dev->addr_len)
//# pattern-43, witnesses: 2
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_add_slave = fn,
};
@@
identifier bond_dev;
identifier slave_dev;
@@
 int bond_enslave(struct net_device * bond_dev, struct net_device * slave_dev)
 {
     <...
- struct sockaddr addr = addr;
- if (!bond->params.fail_over_mac || BOND_MODE(bond) != BOND_MODE_ACTIVEBACKUP) {
- addr.sa_family = slave_dev->type;
- }
+ struct __kernel_sockaddr_storage ss = ss;
+ if (!bond->params.fail_over_mac || BOND_MODE(bond) != BOND_MODE_ACTIVEBACKUP) {
+ ss.ss_family = slave_dev->type;
+ }
     ...>
 }
