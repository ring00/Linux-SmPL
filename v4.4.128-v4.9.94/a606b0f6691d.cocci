//# pattern-14, witnesses: 28
@@
expression E0;
@@
- E0->mmr
+ E0->mmkey
//# pattern-20, witnesses: 9
@@
expression E0;
@@
- E0->mr
+ E0->mkey
//# pattern-3, witnesses: 7
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier dev;
identifier mr;
@@
- int mlx5_core_destroy_mkey(struct mlx5_core_dev * dev, struct mlx5_core_mr * mr)
+ int mlx5_core_destroy_mkey(struct mlx5_core_dev * dev, struct mlx5_core_mkey * mkey)
 {
     <...
- mr->key
+ mkey->key
     ...>
 }
//# pattern-2, witnesses: 6
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier dev;
identifier mr;
identifier out;
identifier outlen;
@@
- int mlx5_core_query_mkey(struct mlx5_core_dev * dev, struct mlx5_core_mr * mr, struct mlx5_query_mkey_mbox_out * out, int outlen)
+ int mlx5_core_query_mkey(struct mlx5_core_dev * dev, struct mlx5_core_mkey * mkey, struct mlx5_query_mkey_mbox_out * out, int outlen)
 {
     <...
- mr->key
+ mkey->key
     ...>
 }
//# pattern-13, witnesses: 6
@@
expression E0;
@@
- E0.mr_table
+ E0.mkey_table
//# pattern-4, witnesses: 3
@r2@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier callback;
identifier context;
identifier dev;
identifier in;
identifier inlen;
typedef mlx5_cmd_cbk_t;
identifier mr;
identifier out;
@@
- int mlx5_core_create_mkey(struct mlx5_core_dev * dev, struct mlx5_core_mr * mr, struct mlx5_create_mkey_mbox_in * in, int inlen, mlx5_cmd_cbk_t callback, void * context, struct mlx5_create_mkey_mbox_out * out)
+ int mlx5_core_create_mkey(struct mlx5_core_dev * dev, struct mlx5_core_mkey * mkey, struct mlx5_create_mkey_mbox_in * in, int inlen, mlx5_cmd_cbk_t callback, void * context, struct mlx5_create_mkey_mbox_out * out)
 {
     <...
- mr->key
+ mkey->key
     ...>
 }
//# pattern-19, witnesses: 2
@@
expression list listE0;
@@
- mlx5_cleanup_mr_table(listE0)
+ mlx5_cleanup_mkey_table(listE0)
