//# pattern-1, witnesses: 2
@@
identifier rproc;
@@
 int rproc_add_virtio_devices(struct rproc * rproc)
 {
     <...
- &rproc->firmware_loading_complete;
     ...>
 }
