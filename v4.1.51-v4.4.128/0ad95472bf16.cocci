//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct svc_procedure i = {
    .pc_func = fn,
};
@@
typedef __be32;
identifier argp;
identifier r0.fn;
identifier resp;
identifier rqstp;
@@
 __be32 fn(struct svc_rqst * rqstp, struct nlm_reboot * argp, void * resp)
 {
     <...
- nlm_host_rebooted(argp)
+ nlm_host_rebooted(SVC_NET(rqstp), argp)
     ...>
 }
