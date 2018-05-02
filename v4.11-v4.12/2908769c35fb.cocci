//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
typedef bool;
identifier info_out;
identifier sb_len;
identifier sense_buffer;
@@
- int scsi_get_sense_info_fld(const u8 * sense_buffer, int sb_len, u64 * info_out)
+ bool scsi_get_sense_info_fld(const u8 * sense_buffer, int sb_len, u64 * info_out)
 {
     <...
- return 0;
+ return false;
     ...>
 }
