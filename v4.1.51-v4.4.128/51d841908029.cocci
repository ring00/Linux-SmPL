//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct target_backend_ops i = {
    .configure_device = fn,
};
@@
expression ME0;
identifier dev;
identifier r0.fn;
@@
 int fn(struct se_device * dev)
 {
     <...
- target_configure_unmap_from_queue(&dev->dev_attrib, q, ME0)
+ target_configure_unmap_from_queue(&dev->dev_attrib, q)
     ...>
 }
