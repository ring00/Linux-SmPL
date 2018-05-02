//# pattern-3, witnesses: 2
@@
expression ME0;
identifier fn;
identifier q;
@@
 void fn(struct tap_queue * q)
 {
     <...
- struct macvlan_dev * vlan = vlan;
- vlan = rtnl_dereference(q->vlan);
- if (vlan) {
- _ --ME0;
- }
+ struct tap_dev * tap = tap;
+ tap = rtnl_dereference(q->tap);
+ if (tap) {
+ _ --ME0;
+ }
     ...>
 }
//# pattern-33, witnesses: 2
@@
expression E0;
@@
- E0->vlan
+ E0->tap
//# pattern-42, witnesses: 2
@@
@@
- MKDEV()
+ MKDEV()
//# pattern-43, witnesses: 2
@@
identifier s;
@@
 struct rtnl_link_ops s = {
+    .priv_size = sizeof(unsigned long),
 };
//# pattern-50, witnesses: 2
@@
@@
- vlan->dev
+ tap->dev
