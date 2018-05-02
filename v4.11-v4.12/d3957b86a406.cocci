//# pattern-1, witnesses: 12
@@
expression E0;
@@
- sa_path_get_service_id(E0)
+ E0->service_id
//# pattern-4, witnesses: 2
@@
identifier PV0;
identifier alt_path;
identifier primary_path;
identifier req_msg;
@@
 void cm_format_paths_from_req(struct cm_req_msg * req_msg, struct sa_path_rec * primary_path, struct sa_path_rec * alt_path)
 {
     <...
- sa_path_set_service_id(PV0, req_msg->service_id);
+ PV0->service_id = req_msg->service_id;
     ...>
 }
//# pattern-5, witnesses: 2
@@
expression E0;
expression E1;
@@
- sa_path_set_service_id(&E0, E1);
+ E0.service_id = E1;
