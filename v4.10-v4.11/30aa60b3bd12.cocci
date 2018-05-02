//# pattern-10, witnesses: 3
@@
expression E0;
@@
- E0->uar
+ E0->bfreg
//# pattern-7, witnesses: 2
@@
expression list listE0;
@@
- mlx5_unmap_free_uar(listE0)
+ mlx5_free_bfreg(listE0)
//# pattern-9, witnesses: 2
@@
@@
- mcq->uar = &mdev->mlx5e_res.cq_uar;
