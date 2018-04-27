//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct tcp_request_sock_ops i = {
    .route_req = fn,
};
@@
identifier fl;
identifier r0.fn;
identifier req;
identifier sk;
identifier strict;
@@
- struct dst_entry * fn(struct sock * sk, struct flowi * fl, const struct request_sock * req, bool * strict)
+ struct dst_entry * fn(const struct sock * sk, struct flowi * fl, const struct request_sock * req, bool * strict)
 { ... }
