//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
expression E1;
identifier req;
identifier sk;
identifier skb;
@@
 struct sock * tcp_create_openreq_child(const struct sock * sk, struct request_sock * req, struct sk_buff * skb)
 {
     <...
- E0->saved_syn = E1;
     ...>
 }
