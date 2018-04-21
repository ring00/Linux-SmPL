//# pattern-2, witnesses: 6
@@
identifier args;
identifier hdr;
identifier xdr;
@@
 void encode_getdeviceinfo(struct xdr_stream * xdr, const struct nfs4_getdeviceinfo_args * args, struct compound_hdr * hdr)
 {
     <...
- (NOTIFY_DEVICEID4_CHANGE | NOTIFY_DEVICEID4_DELETE)
+ (args->notify_types)
     ...>
 }
