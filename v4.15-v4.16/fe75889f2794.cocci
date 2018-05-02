//# pattern-1, witnesses: 2
@@
expression V0;
identifier ctx;
identifier optlen;
identifier path_data;
@@
 int ucma_set_ib_path(struct ucma_context * ctx, struct ib_path_rec_data * path_data, size_t optlen)
 {
     <...
- rdma_set_ib_paths(ctx->cm_id, &V0, 1)
+ rdma_set_ib_path(ctx->cm_id, &V0)
     ...>
 }
