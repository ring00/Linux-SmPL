//# pattern-1, witnesses: 3
@@
expression E0;
@@
- test_bit(i, E0->features)
+ __virtio_test_bit(E0, i)
//# pattern-2, witnesses: 2
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
 void fn(struct virtio_device * vdev)
 {
     <...
- vdev->features[0]
+ vdev->features
     ...>
 }
//# pattern-7, witnesses: 2
@@
expression V0;
@@
- set_bit(V0, dev->features)
+ __virtio_set_bit(dev, V0)
