//# pattern-1, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
@@
- ceph_osdc_build_request(req, E0, E1, vino.snap, E2);
//# pattern-7, witnesses: 2
@@
expression E1;
expression E2;
expression E3;
identifier PV0;
@@
- ceph_osdc_build_request(req, PV0, E1, E2.snap, &E3);
+ req->r_mtime = E3;
//# pattern-19, witnesses: 2
@@
expression E0;
@@
- E0->r_reassert_version
+ E0->r_replay_version
