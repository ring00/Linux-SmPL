//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct sbc_ops i = {
    .execute_rw = fn,
};
@@
expression E0;
statement S1;
identifier cmd;
identifier data_direction;
typedef sense_reason_t;
identifier sgl;
identifier sgl_nents;
typedef u32;
@@
 sense_reason_t fd_execute_rw(struct se_cmd * cmd, struct scatterlist * sgl, u32 sgl_nents, enum dma_data_direction data_direction)
 {
     <...
- if (E0 && dev->dev_attrib.pi_prot_type) { S1 }
+ if (E0 && dev->dev_attrib.pi_prot_type && dev->dev_attrib.pi_prot_verify) { S1 }
     ...>
 }
