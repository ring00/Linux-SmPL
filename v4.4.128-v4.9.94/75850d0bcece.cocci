//# pattern-2, witnesses: 2
@@
expression E2;
expression ME0;
expression ME1;
identifier attr;
identifier attr_mask;
identifier cur_state;
identifier ibqp;
identifier new_state;
@@
 int __mlx5_ib_modify_qp(struct ib_qp * ibqp, const struct ib_qp_attr * attr, int attr_mask, enum ib_qp_state cur_state, enum ib_qp_state new_state)
 {
     <...
- mlx5_set_path(dev, &ME0, &ME1, E2, attr_mask, 0, attr)
+ mlx5_set_path(dev, qp, &ME0, &ME1, E2, attr_mask, 0, attr)
     ...>
 }
