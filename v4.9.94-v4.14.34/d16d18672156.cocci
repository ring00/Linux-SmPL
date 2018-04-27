//# pattern-12, witnesses: 2
@@
identifier s;
@@
 struct svc_procedure [2] s = {
 };
//# pattern-16, witnesses: 2
@r0@
identifier i, fn;
@@
struct svc_procedure i = {
    .pc_encode = fn,
};
@@
identifier dummy;
identifier p;
identifier r0.fn;
identifier rqstp;
@@
- int fn(struct svc_rqst * rqstp, __be32 * p, void * dummy)
+ int fn(struct svc_rqst * rqstp, __be32 * p)
 { ... }
