//# pattern-17, witnesses: 16
@@
@@
- dprintk;
//# pattern-2, witnesses: 8
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
- __be32 fn(struct svc_rqst * rqstp, void * argp, void * resp)
+ __be32 fn(struct svc_rqst * rqstp)
 { ... }
//# pattern-12, witnesses: 8
@@
@@
- struct nlm_file * file = file;
- nlm_release_file(file);
//# pattern-13, witnesses: 8
@@
@@
- struct nlm_host * host = host;
- nlmsvc_release_host(host);
//# pattern-16, witnesses: 6
@r1@
identifier i, fn;
@@
struct svc_procedure i = {
    .pc_func = fn,
};
@@
typedef __be32;
identifier argp;
identifier r1.fn;
identifier resp;
identifier rqstp;
@@
- __be32 fn(struct svc_rqst * rqstp, struct nlm_args * argp, struct nlm_res * resp)
+ __be32 fn(struct svc_rqst * rqstp)
 {
     <...
- resp->cookie = argp->cookie;
     ...>
 }
//# pattern-14, witnesses: 4
@r2@
identifier i, fn;
@@
struct svc_procedure i = {
    .pc_func = fn,
};
@@
expression E0;
typedef __be32;
identifier r2.fn;
identifier rqstp;
@@
 __be32 fn(struct svc_rqst * rqstp)
 {
     <...
- struct nlm_host * host = host;
- struct nlm_file * file = file;
- resp->status = E0;
     ...>
 }
//# pattern-15, witnesses: 4
@r3@
identifier i, fn;
@@
struct svc_procedure i = {
    .pc_func = fn,
};
@@
expression E0;
typedef __be32;
identifier r3.fn;
identifier rqstp;
@@
 __be32 fn(struct svc_rqst * rqstp)
 {
     <...
- struct nlm_host * host = host;
- struct nlm_file * file = file;
- if (resp->status = E0) {
- return ;
- }
     ...>
 }
//# pattern-38, witnesses: 4
@r4@
identifier i, fn;
@@
struct svc_procedure i = {
    .pc_func = fn,
};
@@
expression E0;
typedef __be32;
identifier argp;
identifier r4.fn;
identifier resp;
identifier rqstp;
@@
- __be32 fn(struct svc_rqst * rqstp, struct nlm_args * argp, struct nlm_res * resp)
+ __be32 fn(struct svc_rqst * rqstp)
 {
     <...
- struct nlm_host * host = host;
- struct nlm_file * file = file;
- if (resp->status = E0) {
- return ;
- }
     ...>
 }
//# pattern-40, witnesses: 4
@r5@
identifier i, fn;
@@
struct svc_procedure i = {
    .pc_func = fn,
};
@@
typedef __be32;
identifier r5.fn;
identifier rqstp;
@@
 __be32 fn(struct svc_rqst * rqstp)
 {
     <...
- resp->cookie = argp->cookie;
     ...>
 }
//# pattern-19, witnesses: 2
@@
expression V0;
@@
- V0->pc_func(rqstp, rqstp->rq_argp, rqstp->rq_resp)
+ V0->pc_func(rqstp)
//# pattern-37, witnesses: 2
@r6@
identifier i, fn;
@@
struct svc_procedure i = {
    .pc_func = fn,
};
@@
typedef __be32;
identifier r6.fn;
identifier rqstp;
@@
 __be32 fn(struct svc_rqst * rqstp)
 {
     <...
- struct nlm_file * file = file;
- resp->status = ;
     ...>
 }
//# pattern-39, witnesses: 2
@r7@
identifier i, fn;
@@
struct svc_procedure i = {
    .pc_func = fn,
};
@@
typedef __be32;
identifier r7.fn;
identifier rqstp;
@@
 __be32 fn(struct svc_rqst * rqstp)
 {
     <...
- if (locks_in_grace(SVC_NET(rqstp))) {
- resp->status = nlm_lck_denied_grace_period;
- return rpc_success;
- }
     ...>
 }
//# pattern-48, witnesses: 2
@r8@
identifier i, fn;
@@
struct svc_procedure i = {
    .pc_func = fn,
};
@@
typedef __be32;
identifier r8.fn;
identifier rqstp;
@@
 __be32 fn(struct svc_rqst * rqstp)
 {
     <...
- resp->status = nlmclnt_grant(svc_addr(rqstp), &argp->lock);
     ...>
 }
//# pattern-58, witnesses: 2
@r9@
identifier i, fn;
@@
struct svc_procedure i = {
    .pc_func = fn,
};
@@
typedef __be32;
identifier r9.fn;
identifier rqstp;
@@
 __be32 fn(struct svc_rqst * rqstp)
 {
     <...
- struct nlm_file * file = file;
- struct net * net = SVC_NET(rqstp);
- resp->status = cast_status();
     ...>
 }
//# pattern-59, witnesses: 2
@r10@
identifier i, fn;
@@
struct svc_procedure i = {
    .pc_func = fn,
};
@@
typedef __be32;
identifier r10.fn;
identifier rqstp;
@@
 __be32 fn(struct svc_rqst * rqstp)
 {
     <...
- struct net * net = SVC_NET(rqstp);
- if (locks_in_grace(net)) {
- resp->status = nlm_lck_denied_grace_period;
- return rpc_success;
- }
     ...>
 }
