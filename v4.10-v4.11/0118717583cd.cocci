//# pattern-2, witnesses: 5
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression EC5;
identifier dev;
identifier fn;
@@
 int fn(struct mlx5_core_dev * dev)
 {
     <...
- mlx5_create_map_eq(dev, E0, E1, E2, E3, E4, &dev->priv.bfregi.uars[0], EC5)
+ mlx5_create_map_eq(dev, E0, E1, E2, E3, E4, EC5)
     ...>
 }
