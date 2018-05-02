//# pattern-5, witnesses: 2
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
identifier local_port;
identifier oper_mtu;
identifier r0.fn;
typedef u8;
@@
- int fn(struct mlx5_core_dev * dev, int * oper_mtu, u8 local_port)
+ void fn(struct mlx5_core_dev * dev, int * oper_mtu, u8 port)
 {
     <...
- return mlx5_query_port_mtu(dev, NULL, E0, E1, local_port);
+ mlx5_query_port_mtu(dev, NULL, E0, E1, port);
     ...>
 }
