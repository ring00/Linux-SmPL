//# pattern-6, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression IL0;
expression IL1;
identifier hashinfo;
identifier net;
identifier req;
@@
 struct sock * inet_diag_find_one_icsk(struct net * net, struct inet_hashinfo * hashinfo, const struct inet_diag_req_v2 * req)
 {
     <...
- inet_lookup(net, hashinfo, req->id.idiag_dst[IL0], req->id.idiag_dport, req->id.idiag_src[IL1], req->id.idiag_sport, req->id.idiag_if)
+ inet_lookup(net, hashinfo, NULL, 0, req->id.idiag_dst[IL0], req->id.idiag_dport, req->id.idiag_src[IL1], req->id.idiag_sport, req->id.idiag_if)
     ...>
 }
