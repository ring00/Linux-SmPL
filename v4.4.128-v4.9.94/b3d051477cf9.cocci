//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct tcp_request_sock_ops i = {
    .send_synack = fn,
};
@@
identifier attach_req;
typedef bool;
identifier dst;
identifier fl;
identifier foc;
identifier r0.fn;
identifier req;
identifier sk;
@@
- int fn(const struct sock * sk, struct dst_entry * dst, struct flowi * fl, struct request_sock * req, struct tcp_fastopen_cookie * foc, bool attach_req)
+ int fn(const struct sock * sk, struct dst_entry * dst, struct flowi * fl, struct request_sock * req, struct tcp_fastopen_cookie * foc, enum tcp_synack_type synack_type)
 {
     <...
- tcp_make_synack(sk, dst, req, foc, attach_req)
+ tcp_make_synack(sk, dst, req, foc, synack_type)
     ...>
 }
