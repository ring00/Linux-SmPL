//# pattern-8, witnesses: 4
@@
@@
- mlx5e_get_node(c->priv, c->ix)
+ cpu_to_node(c->cpu)
//# pattern-9, witnesses: 4
@@
@@
- mlx5e_get_node(c->priv, c->ix)
+ cpu_to_node(c->cpu)
//# pattern-7, witnesses: 2
@@
identifier c;
identifier params;
identifier rq;
identifier rqp;
@@
 int mlx5e_alloc_rq(struct mlx5e_channel * c, struct mlx5e_params * params, struct mlx5e_rq_param * rqp, struct mlx5e_rq * rq)
 {
     <...
- mlx5e_get_node(c->priv, c->ix)
+ cpu_to_node(c->cpu)
     ...>
 }
