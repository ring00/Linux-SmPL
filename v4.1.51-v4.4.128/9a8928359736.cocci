//# pattern-9, witnesses: 2
@@
expression E0;
expression EC1;
expression EC2;
@@
- qpc->pri_path.vlan_control = E0 | EC1 | EC2;
+ qpc->pri_path.vlan_control |= E0 | EC1 | EC2;
