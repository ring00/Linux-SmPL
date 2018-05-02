//# pattern-5, witnesses: 2
@@
expression E0;
expression E2;
expression E3;
identifier PV1;
@@
- ib_find_cached_gid_by_port(device, E0, PV1, E2, E3)
+ ib_find_cached_gid_by_port(device, E0, IB_GID_TYPE_IB, PV1, E2, E3)
//# pattern-8, witnesses: 2
@@
expression E0;
expression E2;
expression E3;
expression ME1;
@@
- ib_find_cached_gid(E0, &ME1, E2, &p, E3)
+ ib_find_cached_gid(E0, &ME1, IB_GID_TYPE_IB, E2, &p, E3)
//# pattern-11, witnesses: 2
@@
expression E0;
@@
- GID_ATTR_FIND_MASK_GID | E0
+ GID_ATTR_FIND_MASK_GID | GID_ATTR_FIND_MASK_GID_TYPE | E0
