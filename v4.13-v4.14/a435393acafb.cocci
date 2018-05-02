//# pattern-4, witnesses: 4
@@
@@
- cpu_to_node(c->cpu)
+ mlx5e_get_node(c->priv, c->ix)
//# pattern-5, witnesses: 4
@@
@@
- cpu_to_node(c->cpu)
+ mlx5e_get_node(c->priv, c->ix)
//# pattern-9, witnesses: 2
@@
identifier c;
identifier params;
identifier rq;
identifier rqp;
@@
 int mlx5e_alloc_rq(struct mlx5e_channel * c, struct mlx5e_params * params, struct mlx5e_rq_param * rqp, struct mlx5e_rq * rq)
 {
     <...
- cpu_to_node(c->cpu)
+ mlx5e_get_node(c->priv, c->ix)
     ...>
 }
