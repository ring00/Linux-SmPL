//# pattern-12, witnesses: 15
@@
expression E0;
@@
- E0->dlid
+ sa_path_get_dlid(E0)
//# pattern-4, witnesses: 14
@@
@@
- path->pathrec.dlid
+ sa_path_get_dlid(&path->pathrec)
//# pattern-5, witnesses: 12
@@
expression E0;
@@
- E0->service_id
+ sa_path_get_service_id(E0)
//# pattern-13, witnesses: 7
@@
expression E0;
@@
- E0->slid
+ sa_path_get_slid(E0)
//# pattern-1, witnesses: 2
@@
expression ME2;
expression ME4;
identifier PV0;
identifier PV1;
identifier PV3;
identifier PV5;
identifier alt_path;
identifier primary_path;
identifier req_msg;
@@
 void cm_format_paths_from_req(struct cm_req_msg * req_msg, struct sa_path_rec * primary_path, struct sa_path_rec * alt_path)
 {
     <...
- memset(PV0, 0, sizeof(unsigned long));
- PV1->dlid = ME2;
- PV3->slid = ME4;
- PV5->service_id = req_msg->service_id;
+ sa_path_set_dlid(PV0, ME2);
+ sa_path_set_slid(PV1, ME4);
+ sa_path_set_service_id(PV5, req_msg->service_id);
     ...>
 }
