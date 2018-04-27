//# pattern-2, witnesses: 3
@@
expression E0;
@@
- E0 = sk->__sk_common.skc_bound_dev_if
+ E0 = inet_request_bound_dev_if(sk, skb)
//# pattern-3, witnesses: 2
@@
identifier fn;
identifier sk;
identifier skb;
@@
 struct sock * fn(struct sock * sk, struct sk_buff * skb)
 {
     <...
- sk->__sk_common
+ ireq->req.__req_common
     ...>
 }
