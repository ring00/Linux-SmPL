//# pattern-3, witnesses: 5
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
@@
- E0 = ib_create_cq(E1, E2, E3, E4, E5, 0);
+ struct ib_cq_init_attr cq_attr = ;
+ cq_attr.cqe = E5;
+ E0 = ib_create_cq(E1, E2, E3, E4, &cq_attr);
//# pattern-1, witnesses: 3
@@
expression E1;
expression E11;
expression E2;
expression E3;
expression E5;
expression E7;
expression E8;
expression E9;
expression ME0;
expression ME6;
identifier PV10;
identifier PV4;
@@
- ME0 = ib_create_cq(E1, E2, E3, PV4, E5, 0);
- ME6 = ib_create_cq(E7, E8, E9, PV10, E11, 0);
+ struct ib_cq_init_attr cq_attr = ;
+ cq_attr.cqe = E5;
+ ME0 = ib_create_cq(E1, E2, E3, PV4, &cq_attr);
+ cq_attr.cqe = E11;
+ ME6 = ib_create_cq(E7, E8, E9, PV10, &cq_attr);
//# pattern-6, witnesses: 3
@@
expression E0;
expression E5;
expression E6;
expression F2;
expression F3;
expression ME1;
expression V4;
@@
- E0 = ib_create_cq(ME1, F2, F3, V4, E5, E6);
+ struct ib_cq_init_attr cq_attr = ;
+ cq_attr.cqe = E5;
+ cq_attr.comp_vector = E6;
+ E0 = ib_create_cq(ME1, F2, F3, V4, &cq_attr);
