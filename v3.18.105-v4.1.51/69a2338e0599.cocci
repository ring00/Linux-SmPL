//# pattern-2, witnesses: 4
@@
expression IL0;
@@
- slave->link = IL0;
+ bond_set_slave_link_state(slave, IL0);
//# pattern-3, witnesses: 4
@@
expression E0;
expression IL1;
@@
- E0->link = IL1;
+ bond_set_slave_link_state(E0, IL1);
//# pattern-9, witnesses: 2
@@
@@
- new_slave->link = BOND_LINK_UP;
+ bond_set_slave_link_state(new_slave, BOND_LINK_UP);
//# pattern-11, witnesses: 2
@@
expression E0;
@@
- new_slave->link = E0;
+ bond_set_slave_link_state(new_slave, E0);
