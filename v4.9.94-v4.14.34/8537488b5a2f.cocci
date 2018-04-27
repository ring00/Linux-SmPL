//# pattern-10, witnesses: 4
@r0@
identifier fn;
expression P1;
@@
llvm.expect.i64(fn, P1)
@@
identifier argv;
identifier resv;
identifier rqstp;
@@
 int svc_process_common(struct svc_rqst * rqstp, struct kvec * argv, struct kvec * resv)
 {
     <...
- procp->pc_release(rqstp, NULL, rqstp->rq_resp)
+ procp->pc_release(rqstp)
     ...>
 }
//# pattern-1, witnesses: 2
@r1@
identifier i, fn;
@@
struct svc_procedure i = {
    .pc_release = fn,
};
@@
identifier p;
identifier r1.fn;
identifier resp;
identifier rqstp;
@@
- int fn(struct svc_rqst * rqstp, __be32 * p, struct nfsd3_getaclres * resp)
+ void fn(struct svc_rqst * rqstp)
 {
     <...
- return 1;
+ struct nfsd3_getaclres * resp = rqstp->rq_resp;
     ...>
 }
