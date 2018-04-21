//# pattern-1, witnesses: 4
@r0@
identifier i, fn;
@@
struct virtio_config_ops i = {
    .finalize_features = fn,
};
@@
identifier r0.fn;
identifier vdev;
@@
- void fn(struct virtio_device * vdev)
+ int fn(struct virtio_device * vdev)
 {
     ...
+ return 0;
 }
