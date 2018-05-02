//# pattern-1, witnesses: 3
@@
identifier s;
@@
 struct dsa_switch_driver s = {
 };
//# pattern-2, witnesses: 2
@@
expression E0;
@@
- E0->port_join_bridge
+ E0->port_bridge_join
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- E0->port_leave_bridge
+ E0->port_bridge_leave
