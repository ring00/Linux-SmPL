//# pattern-1, witnesses: 3
@@
expression IL0;
expression IL1;
expression IL2;
expression IL3;
identifier cdb;
identifier fn;
typedef u32;
@@
 u32 fn(unsigned char * cdb)
 {
     <...
- return cdb[IL0] << 24 + cdb[IL1] << 16 + cdb[IL2] << 8 + cdb[IL3];
+ return get_unaligned_be32(&cdb[IL0]);
     ...>
 }
//# pattern-14, witnesses: 2
@@
expression IL0;
expression IL1;
expression IL2;
expression IL3;
expression IL4;
expression IL5;
expression IL6;
expression IL7;
identifier cdb;
identifier fn;
@@
 unsigned long long fn(unsigned char * cdb)
 {
     <...
- unsigned int __v1 = __v1;
- __v1 = cdb[IL0] << 24 | cdb[IL1] << 16 | cdb[IL2] << 8 | cdb[IL3];
- __v2 = cdb[IL4] << 24 | cdb[IL5] << 16 | cdb[IL6] << 8 | cdb[IL7];
- return __v2 | __v1 << 32;
+ return get_unaligned_be64(&cdb[IL0]);
     ...>
 }
//# pattern-20, witnesses: 2
@@
expression list listE0;
@@
- core_scsi3_extract_reservation_key(listE0)
+ get_unaligned_be64(listE0)
//# pattern-24, witnesses: 2
@@
expression BO0;
identifier p;
identifier se_cmd;
identifier xop;
@@
 int target_xcopy_parse_segdesc_02(struct se_cmd * se_cmd, struct xcopy_op * xop, unsigned char * p)
 {
     <...
- xop->dbl |= BO0;
     ...>
 }
