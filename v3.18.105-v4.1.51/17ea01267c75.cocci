//# pattern-1, witnesses: 2
@@
expression E0;
@@
- scsi_get_tag_type(E0->device)
+ E0->device->simple_tags
