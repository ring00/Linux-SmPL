//# pattern-1, witnesses: 3
@@
identifier s;
@@
 const struct virtio_config_ops s = {
+    .get_vq_affinity = vp_get_vq_affinity,
 };
