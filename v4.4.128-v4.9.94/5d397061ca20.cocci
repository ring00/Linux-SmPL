//# pattern-1, witnesses: 10
@@
expression E0;
expression E1;
@@
- bond_set_slave_link_state(E0, E1)
+ bond_set_slave_link_state(E0, E1, BOND_SLAVE_NOTIFY_NOW)
//# pattern-2, witnesses: 6
@@
expression IL1;
expression V0;
@@
- bond_set_slave_link_state(V0, IL1)
+ bond_set_slave_link_state(V0, IL1, BOND_SLAVE_NOTIFY_LATER)
