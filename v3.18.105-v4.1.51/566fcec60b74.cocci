//# pattern-3, witnesses: 2
@@
identifier arg;
identifier fn;
identifier hdr;
identifier xdr;
@@
 void fn(struct xdr_stream * xdr, const struct nfs_closeargs * arg, struct compound_hdr * hdr)
 {
     <...
- arg->stateid
+ &arg->stateid
     ...>
 }
