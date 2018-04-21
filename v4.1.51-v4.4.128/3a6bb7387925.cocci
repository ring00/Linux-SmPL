//# pattern-4, witnesses: 6
@@
identifier hdr;
identifier setclientid;
identifier xdr;
@@
 void encode_setclientid(struct xdr_stream * xdr, const struct nfs4_setclientid * setclientid, struct compound_hdr * hdr)
 {
     <...
- setclientid->sc_cb_ident
+ setclientid->sc_clnt->cl_cb_ident
     ...>
 }
