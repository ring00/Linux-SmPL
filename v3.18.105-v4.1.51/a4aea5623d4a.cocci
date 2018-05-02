//# pattern-13, witnesses: 5
@@
expression E0;
@@
- nvme_submit_io_cmd(E0, &c, NULL)
+ nvme_submit_io_cmd(E0, ns, &c, NULL)
//# pattern-6, witnesses: 3
@@
@@
- int status = status;
- status = nvme_submit_admin_cmd(dev, &c, NULL);
- if (status) {
- return -EIO;
- }
- return 0;
+ return nvme_submit_admin_cmd(dev, &c, NULL);
//# pattern-32, witnesses: 3
@@
identifier s;
@@
 struct nvme_queue * s = {
 };
//# pattern-35, witnesses: 3
@@
expression E0;
expression IL1;
@@
- E0->q_suspended = IL1;
//# pattern-2, witnesses: 2
@@
identifier nvmeq;
@@
 void nvme_free_queue(struct nvme_queue * nvmeq)
 {
     <...
- &nvmeq->q_lock;
     ...>
 }
