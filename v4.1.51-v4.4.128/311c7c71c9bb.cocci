//# pattern-22, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier db;
identifier dev;
@@
- int mlx5_db_alloc(struct mlx5_core_dev * dev, struct mlx5_db * db)
+ int mlx5_db_alloc(struct mlx5_core_dev * dev, struct mlx5_db * db)
 {
     <...
- struct mlx5_db_pgdir * pgdir = pgdir;
- pgdir = mlx5_alloc_db_pgdir(&dev->pdev->dev);
- E0;
     ...>
 }
//# pattern-24, witnesses: 2
@@
expression E0;
@@
- E0.numa
+ E0.buf_numa_node
