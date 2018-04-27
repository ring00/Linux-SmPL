//# pattern-2, witnesses: 2
@@
expression EC0;
@@
- sk->__sk_common.skc_state == EC0
+ sk_listener(sk)
