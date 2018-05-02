//# pattern-8, witnesses: 5
@@
identifier fn;
identifier rdata;
@@
 void fn(struct fc_rport_priv * rdata)
 {
     <...
- fc_rport_error_retry(rdata, fp)
+ fc_rport_error_retry(rdata, -FC_EX_ALLOC_ERR)
     ...>
 }
//# pattern-9, witnesses: 5
@@
@@
- NULL
+ -FC_EX_XMIT_ERR
