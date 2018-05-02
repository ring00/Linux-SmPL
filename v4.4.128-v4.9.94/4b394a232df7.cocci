//# pattern-1, witnesses: 6
@@
expression E0;
identifier cmd;
identifier cmd_q;
identifier fn;
@@
 int fn(struct ccp_cmd_queue * cmd_q, struct ccp_cmd * cmd)
 {
     <...
- E0 = ccp_gen_jobid(cmd_q->ccp)
+ E0 = CCP_NEW_JOBID
     ...>
 }
//# pattern-2, witnesses: 2
@@
identifier s;
@@
 const __be32 [8] s = {
 };
