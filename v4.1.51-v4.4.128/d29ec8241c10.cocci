//# pattern-6, witnesses: 4
@@
expression ME0;
@@
- nvme_submit_sync_cmd(ME0, &c)
+ nvme_submit_sync_cmd(ME0, &c, NULL, 0)
//# pattern-21, witnesses: 2
@@
@@
- res = -ENOMEM;
+ return -ENOMEM;
//# pattern-25, witnesses: 2
@r0@
identifier fn;
expression P0;
@@
nvme_trans_status_code(P0, fn)
@@
identifier dev;
identifier dma_addr;
typedef dma_addr_t;
identifier fid;
identifier nsid;
identifier r0.fn;
identifier result;
@@
 int fn(struct nvme_dev * dev, unsigned int fid, unsigned int nsid, dma_addr_t dma_addr, u32 * result)
 {
     <...
- __nvme_submit_sync_cmd(dev->admin_q, &c, result, 0)
+ __nvme_submit_sync_cmd(dev->admin_q, &c, NULL, NULL, 0, result, 0)
     ...>
 }
//# pattern-35, witnesses: 2
@@
@@
- res = -ENOMEM;
