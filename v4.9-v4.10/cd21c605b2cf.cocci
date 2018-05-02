//# pattern-1, witnesses: 32
@@
expression E0;
@@
- E0->shost
+ fc_bsg_to_shost(E0)
//# pattern-2, witnesses: 10
@@
identifier fn;
identifier job;
identifier s;
@@
  struct lpfc_vport * s = {
 };
int fn(struct fc_bsg_job * job)
 {
     <...
 struct lpfc_vport * s = {
 };
     ...>
 }
//# pattern-4, witnesses: 3
@@
expression E0;
identifier fn;
identifier job;
@@
 int fn(struct fc_bsg_job * job)
 {
     <...
- E0 = job->shost->hostdata
+ E0 = shost_priv(shost)
     ...>
 }
//# pattern-3, witnesses: 2
@@
identifier fn;
identifier job;
identifier s;
@@
  struct bfad_im_port_s * s = {
 };
int fn(struct fc_bsg_job * job)
 {
     <...
 struct bfad_im_port_s * s = {
 };
     ...>
 }
