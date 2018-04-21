//# pattern-1, witnesses: 3
@@
expression E1;
expression E2;
expression V0;
@@
- fill_inode(V0, &E1, E2, session, req->r_request_started, -1, &req->r_caps_reservation)
+ fill_inode(V0, NULL, &E1, E2, session, req->r_request_started, -1, &req->r_caps_reservation)
