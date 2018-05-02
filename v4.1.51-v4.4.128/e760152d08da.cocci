//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
expression E1;
identifier dev;
identifier max_mtu;
identifier r0.fn;
typedef u8;
@@
- int fn(struct mlx5_core_dev * dev, int * max_mtu)
+ int fn(struct mlx5_core_dev * dev, int * max_mtu, u8 local_port)
 {
     <...
- mlx5_query_port_mtu(dev, NULL, E0, E1)
+ mlx5_query_port_mtu(dev, NULL, E0, E1, local_port)
     ...>
 }
