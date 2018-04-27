//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct inet_connection_sock_af_ops i = {
    .conn_request = fn,
};
@@
expression V0;
identifier r0.fn;
identifier sk;
identifier skb;
@@
 int fn(struct sock * sk, struct sk_buff * skb)
 {
     <...
- inet_reqsk_alloc(&V0, sk)
+ inet_reqsk_alloc(&V0, sk, true)
     ...>
 }
//# pattern-3, witnesses: 2
@@
expression V0;
identifier fn;
identifier sk;
identifier skb;
@@
 struct sock * fn(struct sock * sk, struct sk_buff * skb)
 {
     <...
- inet_reqsk_alloc(&V0, sk)
+ inet_reqsk_alloc(&V0, sk, false)
     ...>
 }
