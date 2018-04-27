//# pattern-11, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression IL0;
identifier cb;
identifier ds;
identifier fdb;
identifier port;
@@
- int b53_fdb_dump(struct dsa_switch * ds, int port, struct switchdev_obj_port_fdb * fdb, switchdev_obj_dump_cb_t * cb)
+ int b53_fdb_dump(struct dsa_switch * ds, int port, dsa_fdb_dump_cb_t * cb, void * data)
 {
     <...
- b53_fdb_copy(port, &results[IL0], fdb, cb)
+ b53_fdb_copy(port, &results[IL0], cb, data)
     ...>
 }
