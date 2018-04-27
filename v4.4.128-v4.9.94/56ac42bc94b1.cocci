//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct request_sock_ops i = {
    .destructor = fn,
};
@@
identifier r0.fn;
identifier req;
@@
 void fn(struct request_sock * req)
 {
     <...
- kfree_skb(inet_rsk(req)->pktopts);
+ kfree(inet_rsk(req)->ipv6_opt);
+ kfree_skb(inet_rsk(req)->pktopts);
     ...>
 }
