//# pattern-7, witnesses: 4
@@
expression E0;
expression EC1;
expression V2;
@@
- switchdev_port_obj_del(E0, EC1, &V2.obj)
+ switchdev_port_obj_del(E0, &V2.obj)
//# pattern-1, witnesses: 3
@@
expression EC0;
expression V1;
@@
- switchdev_port_obj_add(dev, EC0, &V1.obj)
+ switchdev_port_obj_add(dev, &V1.obj)
//# pattern-6, witnesses: 3
@@
identifier s;
@@
 struct switchdev_obj_port_fdb s = {
+    .obj = ,
 };
//# pattern-4, witnesses: 2
@@
expression EC0;
expression F2;
expression ME1;
@@
- switchdev_port_obj_dump(dev, EC0, &ME1.obj, F2)
+ switchdev_port_obj_dump(dev, &ME1.obj, F2)
//# pattern-8, witnesses: 2
@@
identifier s;
@@
 struct switchdev_obj_ipv4_fib s = {
+    .obj = ,
 };
//# pattern-10, witnesses: 2
@r0@
identifier fn;
expression P0, P1;
@@
switchdev_port_br_afspec(P0, P1, fn)
@@
identifier dev;
identifier id;
identifier obj;
@@
- int switchdev_port_obj_add(struct net_device * dev, enum switchdev_obj_id id, const struct switchdev_obj * obj)
+ int switchdev_port_obj_add(struct net_device * dev, const struct switchdev_obj * obj)
 {
     <...
- __switchdev_port_obj_add(dev, id, obj, &trans)
+ __switchdev_port_obj_add(dev, obj, &trans)
     ...>
 }
//# pattern-12, witnesses: 2
@@
identifier s;
@@
 struct switchdev_obj_port_vlan s = {
+    .obj = ,
 };
