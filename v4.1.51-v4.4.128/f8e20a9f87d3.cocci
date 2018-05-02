//# pattern-1, witnesses: 2
@@
expression E0;
expression V1;
@@
- switchdev_parent_id_get(E0, &V1)
+ switchdev_port_attr_get(E0, &attr)
