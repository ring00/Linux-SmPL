//# pattern-2, witnesses: 4
@@
expression EC0;
@@
- enum mlx5_port_status ps = ps;
- if (ps == MLX5_PORT_UP) {
- mlx5_set_port_admin_status(mdev, EC0);
- }
//# pattern-1, witnesses: 2
@@
@@
- enum mlx5_port_status ps = ps;
- mlx5_query_port_admin_status(mdev, &ps);
+ mlx5_toggle_port_link(mdev);
