//# pattern-1, witnesses: 2
@@
@@
- newsk->sk_destruct = NULL;
- bh_unlock_sock(newsk);
- sk_free(newsk);
+ sk_free_unlock_clone(newsk);
