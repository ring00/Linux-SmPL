//# pattern-5, witnesses: 9
@@
@@
- np->opt
+ rcu_dereference(np->opt)
//# pattern-11, witnesses: 3
@@
@@
- sock_kfree_s(sk, opt, opt->tot_len);
+ atomic_sub(opt->tot_len, &sk->sk_omem_alloc);
+ txopt_put(opt);
