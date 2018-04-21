//# pattern-11, witnesses: 3
@r0@
identifier i, fn;
@@
struct nfs_rpc_ops i = {
    .decode_dirent = fn,
};
@@
typedef bool;
identifier entry;
identifier plus;
identifier r0.fn;
identifier xdr;
@@
- int fn(struct xdr_stream * xdr, struct nfs_entry * entry, int plus)
+ int fn(struct xdr_stream * xdr, struct nfs_entry * entry, bool plus)
 { ... }
//# pattern-15, witnesses: 3
@r1@
identifier i, fn;
@@
struct nfs_rpc_ops i = {
    .readdir = fn,
};
@@
typedef bool;
identifier cookie;
identifier count;
identifier cred;
identifier dentry;
identifier pages;
identifier plus;
identifier r1.fn;
typedef u64;
@@
- int fn(struct dentry * dentry, struct rpc_cred * cred, u64 cookie, struct page ** pages, unsigned int count, int plus)
+ int fn(struct dentry * dentry, struct rpc_cred * cred, u64 cookie, struct page ** pages, unsigned int count, bool plus)
 { ... }
//# pattern-2, witnesses: 2
@@
identifier data;
@@
 int _nfs4_proc_open(struct nfs4_opendata * data)
 {
     <...
- data->file_created = 1
+ data->file_created = true
     ...>
 }
//# pattern-4, witnesses: 2
@@
@@
- data->cancelled = 1
+ data->cancelled = true
//# pattern-10, witnesses: 2
@@
@@
- data->rpc_done = 0
+ data->rpc_done = false
//# pattern-14, witnesses: 2
@@
@@
- data->rpc_done = 1
+ data->rpc_done = true
//# pattern-16, witnesses: 2
@@
statement S0;
@@
- if (data->cancelled == 0) { S0 }
+ if (!data->cancelled) { S0 }
//# pattern-17, witnesses: 2
@@
@@
- desc->plus = 0
+ desc->plus = false
