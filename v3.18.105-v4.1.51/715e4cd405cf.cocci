//# pattern-4, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
expression E6;
expression E7;
expression E8;
@@
- ceph_osdc_new_request(E0, &ci->i_layout, E1, E2, E3, 1, E4, E5, E6, E7, E8, false)
+ ceph_osdc_new_request(E0, &ci->i_layout, E1, E2, E3, 0, 1, E4, E5, E6, E7, E8, false)
