//# pattern-9, witnesses: 2
@@
identifier cmd;
identifier req;
typedef sense_reason_t;
identifier sgl;
identifier sgl_nents;
typedef u32;
@@
 sense_reason_t pscsi_map_sg(struct se_cmd * cmd, struct scatterlist * sgl, u32 sgl_nents, struct request * req)
 {
     <...
- blk_rq_append_bio(req, bio)
+ blk_rq_append_bio(req, &bio)
     ...>
 }
