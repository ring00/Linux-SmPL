//# pattern-1, witnesses: 11
@@
expression S0;
expression S1;
expression S2;
identifier fn;
identifier sdev;
@@
 void fn(struct scsi_device * sdev)
 {
     <...
- sdev_printk(S0, sdev, S1, S2);
     ...>
 }
//# pattern-2, witnesses: 7
@@
identifier fn;
identifier sdev;
@@
 void fn(struct scsi_device * sdev)
 {
     <...
- unsigned long flags = flags;
- spin_unlock_irqrestore(sdev->request_queue->queue_lock, flags);
     ...>
 }
//# pattern-4, witnesses: 7
@@
identifier fn;
identifier sdev;
@@
 void fn(struct scsi_device * sdev)
 {
     <...
- unsigned long flags = flags;
- spin_lock_irqsave(sdev->request_queue->queue_lock, flags);
     ...>
 }
//# pattern-6, witnesses: 7
@r0@
identifier i, fn;
@@
struct scsi_device_handler i = {
    .attach = fn,
};
@@
expression IL0;
identifier r0.fn;
identifier sdev;
@@
- int fn(struct scsi_device * sdev)
+ struct scsi_dh_data * fn(struct scsi_device * sdev)
 {
     <...
- return -IL0;
+ return ERR_PTR(-IL0);
     ...>
 }
//# pattern-3, witnesses: 4
@r1@
identifier i, fn;
@@
struct scsi_device_handler i = {
    .detach = fn,
};
@@
identifier r1.fn;
identifier sdev;
@@
 void fn(struct scsi_device * sdev)
 {
     <...
- sdev->scsi_dh_data = NULL;
     ...>
 }
//# pattern-8, witnesses: 4
@@
identifier s;
@@
 struct scsi_device_handler s = {
 };
//# pattern-7, witnesses: 3
@r2@
identifier i, fn;
@@
struct scsi_device_handler i = {
    .attach = fn,
};
@@
identifier r2.fn;
identifier sdev;
@@
 struct scsi_dh_data * fn(struct scsi_device * sdev)
 {
     <...
- sdev->scsi_dh_data = &h->dh_data;
- return 0;
+ return &h->dh_data;
     ...>
 }
//# pattern-10, witnesses: 3
@@
expression V0;
@@
- h->dh_data.scsi_dh = &V0;
