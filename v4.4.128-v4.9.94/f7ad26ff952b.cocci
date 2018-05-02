//# pattern-3, witnesses: 3
@@
identifier callbacks;
identifier fn;
identifier names;
identifier nvqs;
identifier vdev;
identifier vqs;
@@
- int fn(struct virtio_device * vdev, unsigned int nvqs, struct virtqueue ** vqs, vq_callback_t ** callbacks, const char ** names)
+ int fn(struct virtio_device * vdev, unsigned int nvqs, struct virtqueue ** vqs, vq_callback_t ** callbacks, const char *const * names)
 { ... }
//# pattern-2, witnesses: 2
@@
identifier callbacks;
identifier fn;
identifier names;
identifier nvqs;
identifier vdev;
identifier vqs;
@@
 int fn(struct virtio_device * vdev, unsigned int nvqs, struct virtqueue ** vqs, vq_callback_t ** callbacks, const char *const * names)
 { ... }
