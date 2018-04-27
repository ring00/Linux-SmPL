//# pattern-1, witnesses: 3
@r0@
identifier i, fn;
@@
struct request_sock_ops i = {
    .rtx_syn_ack = fn,
};
@@
identifier r0.fn;
identifier req;
identifier sk;
@@
- int fn(struct sock * sk, struct request_sock * req)
+ int fn(const struct sock * sk, struct request_sock * req)
 { ... }
