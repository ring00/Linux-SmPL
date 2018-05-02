//# pattern-2, witnesses: 3
@@
@@
- struct virtproc_info * vrp = rpdev->vrp;
+ struct virtio_rpmsg_channel * vch = to_virtio_rpmsg_channel(rpdev);
+ struct virtproc_info * vrp = vch->vrp;
