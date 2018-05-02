//# pattern-4, witnesses: 15
@@
identifier s;
@@
 struct scsi_host_template s = {
+    .use_blk_tags = 1,
 };
//# pattern-3, witnesses: 4
@@
expression E1;
identifier PV0;
@@
- scsi_deactivate_tcq(PV0, E1)
+ scsi_adjust_queue_depth(PV0, 0, E1)
//# pattern-8, witnesses: 2
@r0@
identifier i, fn;
@@
struct scsi_host_template i = {
    .slave_configure = fn,
};
@@
expression V0;
identifier r0.fn;
identifier sdev;
@@
 int fn(struct scsi_device * sdev)
 {
     <...
- if (sdev->tagged_supported) {
- scsi_activate_tcq(sdev, V0);
- }
+ scsi_adjust_queue_depth(sdev, 0, V0);
     ...>
 }
//# pattern-11, witnesses: 2
@@
identifier ahd;
typedef ahd_queue_alg;
identifier alg;
identifier devinfo;
identifier sdev;
@@
 void ahd_platform_set_tags(struct ahd_softc * ahd, struct scsi_device * sdev, struct ahd_devinfo * devinfo, ahd_queue_alg alg)
 {
     <...
- scsi_activate_tcq(sdev, dev->openings + dev->active);
     ...>
 }
