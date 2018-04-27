//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct afs_call_type i = {
    .deliver = fn,
};
@@
typedef bool;
identifier call;
identifier last;
identifier r0.fn;
identifier skb;
@@
 int fn(struct afs_call * call, struct sk_buff * skb, bool last)
 {
     <...
- struct in_addr addr = addr;
- memcpy(&addr, &ip_hdr(skb)->saddr, 4);
+ struct sockaddr_rxrpc srx = srx;
+ rxrpc_kernel_get_peer(afs_socket, call->rxcall, &srx);
     ...>
 }
