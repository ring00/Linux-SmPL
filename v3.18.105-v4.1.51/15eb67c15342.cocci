//# pattern-2, witnesses: 6
@@
identifier args;
identifier hdr;
identifier xdr;
@@
 void encode_layoutreturn(struct xdr_stream * xdr, const struct nfs4_layoutreturn_args * args, struct compound_hdr * hdr)
 {
     <...
- (args->iomode)
+ (args->range.iomode)
     ...>
 }
