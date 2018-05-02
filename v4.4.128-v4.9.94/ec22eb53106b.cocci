//# pattern-28, witnesses: 4
@@
@@
- MLX5_ACCESS_MODE_KLM
+ MLX5_MKC_ACCESS_MODE_KLMS
//# pattern-13, witnesses: 2
@r0@
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
identifier mkey;
typedef mlx5_cmd_cbk_t;
identifier out;
@@
- int mlx5_core_create_mkey(struct mlx5_core_dev * dev, struct mlx5_core_mkey * mkey, struct mlx5_create_mkey_mbox_in * in, int inlen, mlx5_cmd_cbk_t callback, void * context, struct mlx5_create_mkey_mbox_out * out)
+ int mlx5_core_create_mkey(struct mlx5_core_dev * dev, struct mlx5_core_mkey * mkey, u32 * in, int inlen)
 {
     <...
- int err = err;
- if (callback) {
- err = mlx5_cmd_exec_cb(dev, in, inlen, out, sizeof(unsigned long), callback, context);
- return err;
- }
     ...>
 }
//# pattern-14, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier dev;
identifier in;
identifier inlen;
identifier mkey;
@@
 int mlx5_core_create_mkey(struct mlx5_core_dev * dev, struct mlx5_core_mkey * mkey, u32 * in, int inlen)
 {
     <...
- struct mlx5_mkey_table * table = &dev->priv.mkey_table;
- &table->lock;
     ...>
 }
//# pattern-15, witnesses: 2
@r2@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier dev;
identifier in;
identifier inlen;
identifier mkey;
@@
 int mlx5_core_create_mkey(struct mlx5_core_dev * dev, struct mlx5_core_mkey * mkey, u32 * in, int inlen)
 {
     <...
- struct mlx5_create_mkey_mbox_out lout = lout;
- u8 key = key;
- key = _ ++dev->priv.mkey_key;
- E0;
     ...>
 }
//# pattern-17, witnesses: 2
@r3@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression ME0;
identifier dev;
identifier in;
identifier inlen;
identifier mkey;
@@
 int mlx5_core_create_mkey(struct mlx5_core_dev * dev, struct mlx5_core_mkey * mkey, u32 * in, int inlen)
 {
     <...
- ME0 = ;
     ...>
 }
//# pattern-21, witnesses: 2
@r4@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier dev;
identifier in;
identifier inlen;
identifier mkey;
@@
 int mlx5_core_create_mkey(struct mlx5_core_dev * dev, struct mlx5_core_mkey * mkey, u32 * in, int inlen)
 {
     <...
- &dev->priv.mkey_lock;
     ...>
 }
