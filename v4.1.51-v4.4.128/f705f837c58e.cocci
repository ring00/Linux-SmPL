//# pattern-1, witnesses: 8
@@
@@
- nvme_submit_admin_cmd(dev, &c, NULL)
+ nvme_submit_sync_cmd(dev->admin_q, &c)
//# pattern-3, witnesses: 3
@@
@@
- nvme_submit_io_cmd(dev, ns, &c, NULL)
+ nvme_submit_sync_cmd(ns->queue, &c)
//# pattern-2, witnesses: 2
@@
identifier dev;
identifier dma_addr;
typedef dma_addr_t;
identifier dword11;
identifier fid;
identifier fn;
identifier result;
@@
 int fn(struct nvme_dev * dev, unsigned int fid, unsigned int dword11, dma_addr_t dma_addr, u32 * result)
 {
     <...
- nvme_submit_admin_cmd(dev, &c, result)
+ __nvme_submit_sync_cmd(dev->admin_q, &c, result, 0)
     ...>
 }
//# pattern-14, witnesses: 2
@@
identifier cmd;
identifier fn;
identifier hdr;
identifier ns;
@@
 int fn(struct nvme_ns * ns, struct sg_io_hdr * hdr, u8 * cmd)
 {
     <...
- nvme_submit_io_cmd(ns->dev, ns, &c, NULL)
+ nvme_submit_sync_cmd(ns->queue, &c)
     ...>
 }
