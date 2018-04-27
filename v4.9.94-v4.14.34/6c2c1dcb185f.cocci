//# pattern-3, witnesses: 7
@r0@
identifier i, fn;
@@
struct dsa_switch_ops i = {
    .port_fdb_del = fn,
};
@@
identifier ds;
identifier fdb;
identifier port;
identifier r0.fn;
typedef u16;
@@
- int fn(struct dsa_switch * ds, int port, const struct switchdev_obj_port_fdb * fdb)
+ int fn(struct dsa_switch * ds, int port, const unsigned char * addr, u16 vid)
 {
     <...
- fdb->addr
+ addr
     ...>
 }
//# pattern-5, witnesses: 6
@r1@
identifier i, fn;
@@
struct dsa_switch_ops i = {
    .port_fdb_add = fn,
};
@@
expression E0;
identifier ds;
identifier fdb;
identifier port;
identifier trans;
typedef u16;
@@
- void ksz_port_fdb_add(struct dsa_switch * ds, int port, const struct switchdev_obj_port_fdb * fdb, struct switchdev_trans * trans)
+ void ksz_port_fdb_add(struct dsa_switch * ds, int port, const unsigned char * addr, u16 vid)
 {
     <...
- fdb->addr[E0]
+ addr[E0]
     ...>
 }
//# pattern-1, witnesses: 3
@r2@
identifier i, fn;
@@
struct dsa_switch_ops i = {
    .port_fdb_prepare = fn,
};
@@
identifier ds;
identifier fdb;
identifier port;
identifier r2.fn;
identifier trans;
typedef u16;
@@
- int fn(struct dsa_switch * ds, int port, const struct switchdev_obj_port_fdb * fdb, struct switchdev_trans * trans)
+ int fn(struct dsa_switch * ds, int port, const unsigned char * addr, u16 vid)
 { ... }
//# pattern-13, witnesses: 2
@r3@
identifier i, fn;
@@
struct dsa_switch_ops i = {
    .port_fdb_add = fn,
};
@@
identifier addr;
identifier ds;
identifier port;
typedef u16;
identifier vid;
@@
 void ksz_port_fdb_add(struct dsa_switch * ds, int port, const unsigned char * addr, u16 vid)
 {
     <...
- fdb->vid
+ vid
     ...>
 }
//# pattern-16, witnesses: 2
@@
expression ME0;
identifier ds;
identifier info;
@@
 int dsa_switch_fdb_add(struct dsa_switch * ds, struct dsa_notifier_fdb_info * info)
 {
     <...
- ME0(ds, info->port, fdb, trans)
+ ME0(ds, info->port, fdb->addr, fdb->vid)
     ...>
 }
