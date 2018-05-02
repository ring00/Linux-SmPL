//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct drm_driver i = {
    .load = fn,
};
@@
identifier dev;
identifier flags;
@@
 int virtio_gpu_driver_load(struct drm_device * dev, unsigned long flags)
 {
     <...
- dev->virtdev
+ dev_to_virtio(dev->dev)
     ...>
 }
