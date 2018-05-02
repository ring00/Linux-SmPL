//# pattern-13, witnesses: 2
@@
identifier fod;
identifier tgtport;
@@
 void nvmet_fc_handle_fcp_rqst(struct nvmet_fc_tgtport * tgtport, struct nvmet_fc_fcp_iod * fod)
 {
     <...
- fod->fcpreq
+ fod
     ...>
 }
