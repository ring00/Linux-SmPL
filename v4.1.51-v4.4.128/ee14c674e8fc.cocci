//# pattern-15, witnesses: 6
@@
@@
- get_rdac_data(sdev)
+ sdev->handler_data
//# pattern-23, witnesses: 5
@@
expression E0;
@@
- E0->scsi_dh_data
+ E0->handler
//# pattern-2, witnesses: 4
@r0@
identifier i, fn;
@@
struct scsi_device_handler i = {
    .attach = fn,
};
@@
identifier r0.fn;
identifier sdev;
@@
- struct scsi_dh_data * fn(struct scsi_device * sdev)
+ int fn(struct scsi_device * sdev)
 {
     <...
- return ERR_PTR(-ENOMEM);
+ return -ENOMEM;
     ...>
 }
//# pattern-5, witnesses: 3
@@
identifier s;
@@
 struct clariion_dh_data * s = {
 };
//# pattern-16, witnesses: 3
@@
identifier s;
@@
 struct alua_dh_data * s = {
 };
//# pattern-18, witnesses: 3
@@
@@
- sdev->scsi_dh_data->scsi_dh
+ sdev->handler
//# pattern-10, witnesses: 2
@@
identifier s;
@@
 struct hp_sw_dh_data * s = {
 };
//# pattern-17, witnesses: 2
@@
@@
- sdev->scsi_dh_data->scsi_dh
+ sdev->handler
