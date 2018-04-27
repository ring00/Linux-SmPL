//# pattern-5, witnesses: 9
@@
@@
- np->opt
+ rcu_dereference(np->opt)
//# pattern-11, witnesses: 2
@@
identifier level;
identifier optlen;
identifier optname;
identifier optval;
identifier sk;
@@
 int do_ipv6_setsockopt(struct sock * sk, int level, int optname, char * optval, unsigned int optlen)
 {
     <...
- sock_kfree_s(sk, opt, opt->tot_len);
+ atomic_sub(opt->tot_len, &sk->sk_omem_alloc);
+ txopt_put(opt);
     ...>
 }
