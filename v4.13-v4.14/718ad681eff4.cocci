//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct sysfs_ops i = {
    .show = fn,
};
@@
identifier attr;
identifier buf;
identifier kobj;
identifier r0.fn;
@@
 ssize_t fn(struct kobject * kobj, struct attribute * attr, char * buf)
 {
     <...
- attribute->show(queue, attribute, buf)
+ attribute->show(queue, buf)
     ...>
 }
//# pattern-3, witnesses: 2
@r1@
identifier i, fn;
@@
struct sysfs_ops i = {
    .store = fn,
};
@@
identifier attr;
identifier buf;
identifier count;
identifier kobj;
identifier r1.fn;
@@
 ssize_t fn(struct kobject * kobj, struct attribute * attr, const char * buf, size_t count)
 {
     <...
- attribute->store(queue, attribute, buf, count)
+ attribute->store(queue, buf, count)
     ...>
 }
//# pattern-4, witnesses: 2
@r2@
identifier i, fn;
@@
struct rx_queue_attribute i = {
    .show = fn,
};
@@
identifier attribute;
identifier buf;
identifier queue;
identifier r2.fn;
@@
- ssize_t fn(struct netdev_rx_queue * queue, struct rx_queue_attribute * attribute, char * buf)
+ ssize_t fn(struct netdev_rx_queue * queue, char * buf)
 { ... }
