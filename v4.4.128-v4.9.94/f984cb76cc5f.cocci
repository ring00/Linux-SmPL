//# pattern-1, witnesses: 2
@@
expression E0;
@@
- pgid_cmp(E0, pg->pgid)
+ ceph_pg_compare(&E0, &pg->pgid)
