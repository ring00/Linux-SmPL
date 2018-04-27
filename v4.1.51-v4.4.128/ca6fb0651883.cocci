//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct tcp_request_sock_ops i = {
    .send_synack = fn,
};
@@
typedef bool;
identifier dst;
identifier fl;
identifier foc;
identifier queue_mapping;
identifier r0.fn;
identifier req;
identifier sk;
typedef u16;
@@
- int fn(const struct sock * sk, struct dst_entry * dst, struct flowi * fl, struct request_sock * req, u16 queue_mapping, struct tcp_fastopen_cookie * foc)
+ int fn(const struct sock * sk, struct dst_entry * dst, struct flowi * fl, struct request_sock * req, u16 queue_mapping, struct tcp_fastopen_cookie * foc, bool attach_req)
 {
     <...
- tcp_make_synack(sk, dst, req, foc)
+ tcp_make_synack(sk, dst, req, foc, attach_req)
     ...>
 }
