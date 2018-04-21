//# pattern-1, witnesses: 3
@r0@
identifier i, fn;
@@
struct nfs_rpc_ops i = {
    .init_client = fn,
};
@@
expression EC0;
identifier clp;
identifier ip_addr;
identifier r0.fn;
identifier timeparms;
@@
- struct nfs_client * fn(struct nfs_client * clp, const struct rpc_timeout * timeparms, const char * ip_addr)
+ struct nfs_client * fn(struct nfs_client * clp, const struct nfs_client_initdata * cl_init)
 {
     <...
- nfs_create_rpc_client(clp, timeparms, EC0)
+ nfs_create_rpc_client(clp, cl_init, EC0)
     ...>
 }
//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- struct nfs_client_initdata cl_init = ;
- clp = nfs_get_client(listE0);
+ struct nfs_client_initdata cl_init = ;
+ clp = nfs_get_client(&cl_init, au_flavor);
