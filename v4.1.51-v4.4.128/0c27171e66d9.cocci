//# pattern-1, witnesses: 2
@@
identifier dst;
identifier fn;
identifier req;
identifier sk;
identifier skb;
@@
- struct sock * fn(struct sock * sk, struct sk_buff * skb, struct request_sock * req, struct dst_entry * dst)
+ struct sock * fn(const struct sock * sk, struct sk_buff * skb, struct request_sock * req, struct dst_entry * dst)
 {
     <...
- struct ipv6_pinfo * newnp = newnp;
+ struct ipv6_pinfo * newnp = newnp;
+ const struct ipv6_pinfo * np = inet6_sk(sk);
     ...>
 }
//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier dst;
identifier r0.fn;
identifier req;
identifier sk;
identifier skb;
@@
 struct sock * fn(const struct sock * sk, struct sk_buff * skb, struct request_sock * req, struct dst_entry * dst)
 { ... }
