//# pattern-3, witnesses: 2
@@
expression E0;
@@
- mlx5_cmd_update_root_ft(root->dev, E0)
+ mlx5_cmd_update_root_ft(root->dev, E0, root->underlay_qpn)
//# pattern-8, witnesses: 2
@@
expression E0;
identifier fn;
identifier priv;
@@
 int fn(struct mlx5e_priv * priv)
 {
     <...
- mlx5e_create_ttc_table(priv, E0)
+ mlx5e_create_ttc_table(priv)
     ...>
 }
