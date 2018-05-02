//# pattern-7, witnesses: 2
@@
expression ME0;
@@
- struct Scsi_Host * shost = ME0;
- scsi_free_sense_buffer(shost, cmd->sense_buffer);
+ scsi_free_sense_buffer(cmd->flags & SCMD_UNCHECKED_ISA_DMA, cmd->sense_buffer);
