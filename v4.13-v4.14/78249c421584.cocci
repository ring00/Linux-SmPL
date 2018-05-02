//# pattern-4, witnesses: 2
@@
identifier fn;
identifier i;
identifier mdev;
@@
 int fn(struct mlx5_core_dev * mdev, int i)
 {
     <...
- struct msix_entry * msix = priv->msix_arr;
- int irq = msix[i + MLX5_EQ_VEC_COMP_BASE].vector;
+ int irq = pci_irq_vector(mdev->pdev, MLX5_EQ_VEC_COMP_BASE + i);
     ...>
 }
//# pattern-5, witnesses: 2
@@
expression ME0;
@@
- mlx5_get_msix_vec(ME0, MLX5_EQ_VEC_ASYNC)
+ pci_irq_vector(ME0->pdev, MLX5_EQ_VEC_ASYNC)
//# pattern-9, witnesses: 2
@@
expression list listE0;
@@
- mlx5_disable_msix(listE0)
+ mlx5_free_irq_vectors(listE0)
