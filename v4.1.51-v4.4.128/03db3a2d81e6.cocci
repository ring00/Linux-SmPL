//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier device;
identifier gid;
identifier index;
identifier port_num;
typedef u8;
@@
- int ib_get_cached_gid(struct ib_device * device, u8 port_num, int index, union ib_gid * gid)
+ int ib_get_cached_gid(struct ib_device * device, u8 port_num, int index, union ib_gid * gid)
 {
     <...
- unsigned long flags = flags;
     ...>
 }
