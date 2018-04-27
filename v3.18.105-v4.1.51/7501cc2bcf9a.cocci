//# pattern-2, witnesses: 2
@@
statement S0;
typedef __be32;
identifier cnt;
identifier fhp;
identifier file;
typedef loff_t;
identifier offset;
identifier rqstp;
identifier stablep;
identifier vec;
identifier vlen;
@@
 __be32 nfsd_vfs_write(struct svc_rqst * rqstp, struct svc_fh * fhp, struct file * file, loff_t offset, struct kvec * vec, int vlen, unsigned long * cnt, int * stablep)
 {
     <...
- if (rqstp->rq_local) { S0 }
+ if (test_bit(RQ_LOCAL, &rqstp->rq_flags)) { S0 }
     ...>
 }
