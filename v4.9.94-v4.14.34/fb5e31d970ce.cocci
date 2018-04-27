//# pattern-2, witnesses: 10
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
@@
- E0->config->find_vqs(E1, E2, E3, E4, E5)
+ E0->config->find_vqs(E1, E2, E3, E4, E5, NULL)
//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct virtio_config_ops i = {
    .find_vqs = fn,
};
@@
identifier callbacks;
identifier names;
identifier nvqs;
identifier r0.fn;
identifier vdev;
identifier vqs;
@@
- int fn(struct virtio_device * vdev, unsigned int nvqs, struct virtqueue ** vqs, vq_callback_t ** callbacks, const char *const * names)
+ int fn(struct virtio_device * vdev, unsigned int nvqs, struct virtqueue ** vqs, vq_callback_t ** callbacks, const char *const * names, struct irq_affinity * desc)
 { ... }
