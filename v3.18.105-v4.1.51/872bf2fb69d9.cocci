//# pattern-1, witnesses: 27
@@
@@
- dev->pdev
+ dev->persist->pdev
//# pattern-5, witnesses: 17
@@
expression E0;
@@
- E0->dev
+ E0->dev->persist
//# pattern-6, witnesses: 8
@@
@@
- dev->num_vfs
+ dev->persist->num_vfs
//# pattern-2, witnesses: 6
@@
@@
- &dev->pdev->dev
+ &dev->persist->pdev->dev
//# pattern-3, witnesses: 2
@@
identifier dev;
identifier vf;
@@
 int mlx4_get_slave_indx(struct mlx4_dev * dev, int vf)
 {
     <...
- dev->num_vfs
+ dev->persist->num_vfs
     ...>
 }
//# pattern-10, witnesses: 2
@@
identifier dev;
@@
 int mlx4_init_eq_table(struct mlx4_dev * dev)
 {
     <...
- dev->pdev
+ dev->persist->pdev
     ...>
 }
//# pattern-13, witnesses: 2
@@
@@
- priv->dev.pdev
+ priv->dev.persist->pdev
