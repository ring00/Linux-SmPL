//# pattern-9, witnesses: 2
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
- struct sock * fn(const struct sock * sk, struct sk_buff * skb, struct request_sock * req, struct dst_entry * dst)
+ struct sock * fn(const struct sock * sk, struct sk_buff * skb, struct request_sock * req, struct dst_entry * dst, struct request_sock * req_unhash, bool * own_req)
 {
     <...
- __inet_hash_nolisten(newsk, NULL);
+ *own_req = inet_ehash_nolisten(newsk, req_to_sk(req_unhash));
     ...>
 }
//# pattern-11, witnesses: 2
@@
expression list listE0;
@@
- __inet_hash_nolisten(listE0)
+ inet_ehash_nolisten(listE0)
//# pattern-14, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0->icsk_af_ops->syn_recv_sock(sk, skb, req, E1)
+ E0->icsk_af_ops->syn_recv_sock(sk, skb, req, E1, NULL, &own_req)
