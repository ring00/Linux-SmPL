//# pattern-1, witnesses: 15
@@
identifier s;
@@
 struct scsi_host_template s = {
-    .use_blk_tags = 1,
 };
//# pattern-3, witnesses: 3
@@
expression E1;
expression ME2;
expression V0;
expression V3;
@@
- V0 = scsi_init_shared_tag_map(E1, ME2);
- if (V3) {
- }
