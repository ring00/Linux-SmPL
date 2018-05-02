//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
typedef bool;
identifier sb_len;
identifier sense_buffer;
identifier sshdr;
@@
- int scsi_normalize_sense(const u8 * sense_buffer, int sb_len, struct scsi_sense_hdr * sshdr)
+ bool scsi_normalize_sense(const u8 * sense_buffer, int sb_len, struct scsi_sense_hdr * sshdr)
 {
     <...
- return 0;
+ return false;
     ...>
 }
