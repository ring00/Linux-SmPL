//# pattern-27, witnesses: 8
@@
expression E0;
@@
- E0->sk_cgrp
+ E0->sk_memcg
//# pattern-17, witnesses: 3
@@
identifier fn;
identifier sk;
@@
 void fn(struct sock * sk)
 {
     <...
- sk->sk_cgrp->memcg
+ sk->sk_memcg
     ...>
 }
