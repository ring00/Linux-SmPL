//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct rpc_authops i = {
    .lookup_cred = fn,
};
@@
identifier acred;
identifier auth;
identifier flags;
identifier r0.fn;
@@
 struct rpc_cred * fn(struct rpc_auth * auth, struct auth_cred * acred, int flags)
 {
     <...
- rpcauth_lookup_credcache(auth, acred, flags)
+ rpcauth_lookup_credcache(auth, acred, flags, GFP_NOFS)
     ...>
 }
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct rpc_authops i = {
    .crcreate = fn,
};
@@
identifier acred;
identifier auth;
identifier flags;
typedef gfp_t;
identifier r1.fn;
@@
- struct rpc_cred * fn(struct rpc_auth * auth, struct auth_cred * acred, int flags)
+ struct rpc_cred * fn(struct rpc_auth * auth, struct auth_cred * acred, int flags, gfp_t gfp)
 {
     <...
- GFP_NOFS
+ gfp
     ...>
 }
