//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier dev;
identifier oper_mtu;
identifier port;
identifier r0.fn;
typedef u8;
@@
- void fn(struct mlx5_core_dev * dev, int * oper_mtu, u8 port)
+ void fn(struct mlx5_core_dev * dev, u16 * oper_mtu, u8 port)
 { ... }
