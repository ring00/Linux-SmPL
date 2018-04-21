//# pattern-1, witnesses: 6
@@
identifier args;
identifier hdr;
identifier xdr;
@@
 void encode_layoutreturn(struct xdr_stream * xdr, const struct nfs4_layoutreturn_args * args, struct compound_hdr * hdr)
 {
     <...
- (IOMODE_ANY)
+ (args->iomode)
     ...>
 }
