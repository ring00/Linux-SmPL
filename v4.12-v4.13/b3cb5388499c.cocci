//# pattern-2, witnesses: 2
@@
typedef bool;
identifier boot;
identifier dev;
identifier fn;
identifier priv;
@@
 int fn(struct mlx5_core_dev * dev, struct mlx5_priv * priv, bool boot)
 { ... }
