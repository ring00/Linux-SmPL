//# pattern-2, witnesses: 6
@@
identifier args;
identifier hdr;
identifier xdr;
@@
 void encode_create_session(struct xdr_stream * xdr, struct nfs41_create_session_args * args, struct compound_hdr * hdr)
 {
     <...
- clp->cl_seqid
+ args->seqid
     ...>
 }
