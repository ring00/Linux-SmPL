//# pattern-1, witnesses: 2
@@
identifier cmnd;
identifier dev;
identifier req;
identifier size;
@@
 int nvme_map_data(struct nvme_dev * dev, struct request * req, unsigned int size, struct nvme_command * cmnd)
 {
     <...
- cmnd->rw
+ cmnd->rw.dptr
     ...>
 }
//# pattern-2, witnesses: 2
@@
@@
- cqe.result
+ cqe.result
//# pattern-3, witnesses: 2
@@
@@
- c.features
+ c.features.dptr
