//# pattern-5, witnesses: 4
@@
expression E1;
expression S0;
@@
- scsi_print_sense(S0, E1)
+ scsi_print_sense(E1)
//# pattern-4, witnesses: 2
@@
identifier sdkp;
identifier sshdr;
@@
 void sd_print_sense_hdr(struct scsi_disk * sdkp, struct scsi_sense_hdr * sshdr)
 {
     <...
- sd_printk(KERN_INFO, sdkp, " ");
     ...>
 }
//# pattern-11, witnesses: 2
@@
identifier SRpnt;
identifier STp;
@@
 int st_chk_result(struct scsi_tape * STp, struct st_request * SRpnt)
 {
     <...
- __scsi_print_sense(name, SRpnt->sense, 96)
+ __scsi_print_sense(STp->device, name, SRpnt->sense, 96)
     ...>
 }
