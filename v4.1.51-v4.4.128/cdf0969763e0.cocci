//# pattern-3, witnesses: 2
@@
@@
- ether_addr_copy(obj.u.fdb.addr, addr);
//# pattern-4, witnesses: 2
@@
identifier s;
@@
 struct switchdev_obj_fdb s = {
+    .addr = addr,
 };
//# pattern-6, witnesses: 2
@@
identifier s;
@@
 struct dsa_switch_driver s = {
 };
