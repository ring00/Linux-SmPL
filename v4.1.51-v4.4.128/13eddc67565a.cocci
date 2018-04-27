//# pattern-1, witnesses: 2
@@
expression E0;
@@
- E0.opt
+ E0.ireq_opt
//# pattern-2, witnesses: 2
@@
@@
- ireq->opt = tcp_v4_save_options(skb);
+ RCU_INIT_POINTER(ireq->ireq_opt, tcp_v4_save_options(skb));
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
- inet_rsk(req)->opt
+ rcu_dereference_protected(inet_rsk(req)->ireq_opt, 1)
     ...>
 }
//# pattern-7, witnesses: 2
@@
@@
- ireq->opt
+ rcu_dereference(ireq->ireq_opt)
//# pattern-11, witnesses: 2
@@
expression E0;
@@
- struct ip_options_rcu * opt = opt;
- opt = E0;
- if (!opt || opt->opt.cipso == 0) {
- return;
- }