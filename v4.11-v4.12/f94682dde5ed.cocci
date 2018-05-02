//# pattern-7, witnesses: 2
@r0@
identifier i, fn;
@@
struct virtio_config_ops i = {
    .find_vqs = fn,
};
@@
expression EC0;
identifier callbacks;
identifier desc;
identifier names;
identifier nvqs;
identifier vdev;
identifier vqs;
@@
- int vp_find_vqs(struct virtio_device * vdev, unsigned int nvqs, struct virtqueue ** vqs, vq_callback_t ** callbacks, const char *const * names, struct irq_affinity * desc)
+ int vp_find_vqs(struct virtio_device * vdev, unsigned int nvqs, struct virtqueue ** vqs, vq_callback_t ** callbacks, const char *const * names, const bool * ctx, struct irq_affinity * desc)
 {
     <...
- vp_find_vqs_msix(vdev, nvqs, vqs, callbacks, names, EC0, desc)
+ vp_find_vqs_msix(vdev, nvqs, vqs, callbacks, names, EC0, ctx, desc)
     ...>
 }
