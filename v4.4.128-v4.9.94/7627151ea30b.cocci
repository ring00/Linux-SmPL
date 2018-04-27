//# pattern-9, witnesses: 10
@@
expression ME0;
@@
- ceph_file_layout_pg_pool(ME0)
+ ME0.pool_id
//# pattern-11, witnesses: 4
@@
@@
- ceph_file_layout_su(ci->i_layout)
+ ci->i_layout.stripe_unit
//# pattern-15, witnesses: 4
@@
@@
- ceph_file_layout_object_size(ci->i_layout)
+ ci->i_layout.object_size
//# pattern-2, witnesses: 3
@@
identifier s;
@@
 u32 s = {
 };
//# pattern-13, witnesses: 3
@@
@@
- ceph_file_layout_stripe_count(ci->i_layout)
+ ci->i_layout.stripe_count
//# pattern-3, witnesses: 2
@@
identifier s;
@@
 u32 s = {
 };
//# pattern-4, witnesses: 2
@@
identifier s;
@@
 u32 s = {
 };
