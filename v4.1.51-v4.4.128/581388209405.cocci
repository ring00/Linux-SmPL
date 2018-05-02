//# pattern-2, witnesses: 3
@@
identifier s;
@@
 const struct block_device_operations s = {
+    .revalidate_disk = nvdimm_revalidate_disk,
 };
