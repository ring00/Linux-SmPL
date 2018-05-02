//# pattern-3, witnesses: 5
@@
expression E0;
expression E1;
@@
- mlx4_table_get(dev, E0, E1, GFP_KERNEL)
+ mlx4_table_get(dev, E0, E1)
//# pattern-10, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
@@
- mlx4_qp_alloc(E0->dev, E1, E2, GFP_KERNEL)
+ mlx4_qp_alloc(E0->dev, E1, E2)
//# pattern-12, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
@@
- mlx4_buf_write_mtt(E0, &E1->mtt, &E2->buf, GFP_KERNEL)
+ mlx4_buf_write_mtt(E0, &E1->mtt, &E2->buf)
//# pattern-16, witnesses: 3
@@
expression E0;
expression E1;
expression IL2;
@@
- mlx4_db_alloc(E0, &E1->db, IL2, GFP_KERNEL)
+ mlx4_db_alloc(E0, &E1->db, IL2)
//# pattern-9, witnesses: 2
@@
identifier PV0;
@@
- mlx4_mpt_alloc_icm(dev, key_to_hw_index(PV0->key), GFP_KERNEL)
+ mlx4_mpt_alloc_icm(dev, key_to_hw_index(PV0->key))
//# pattern-27, witnesses: 2
@@
expression E0;
expression E1;
@@
- mlx4_buf_alloc(dev->dev, E0, PAGE_SIZE * 2, &E1->buf, GFP_KERNEL)
+ mlx4_buf_alloc(dev->dev, E0, PAGE_SIZE * 2, &E1->buf)
//# pattern-41, witnesses: 2
@@
expression E0;
identifier init_attr;
identifier pd;
identifier udata;
@@
 struct ib_qp * _mlx4_ib_create_qp(struct ib_pd * pd, struct ib_qp_init_attr * init_attr, struct ib_udata * udata)
 {
     <...
- create_qp_common(to_mdev(pd->device), pd, init_attr, udata, E0, &qp, gfp)
+ create_qp_common(to_mdev(pd->device), pd, init_attr, udata, E0, &qp)
     ...>
 }
//# pattern-42, witnesses: 2
@@
expression E0;
@@
- E0 | MLX4_IB_QP_CREATE_USE_GFP_NOIO
+ E0
