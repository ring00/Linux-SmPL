//# pattern-1, witnesses: 8
@@
@@
- set_bit(SOCK_ASYNC_NOSPACE, &sk->sk_socket->flags)
+ sk_set_bit(SOCKWQ_ASYNC_NOSPACE, sk)
//# pattern-2, witnesses: 7
@@
@@
- clear_bit(SOCK_ASYNC_WAITDATA, &sk->sk_socket->flags)
+ sk_clear_bit(SOCKWQ_ASYNC_WAITDATA, sk)
//# pattern-3, witnesses: 7
@@
@@
- set_bit(SOCK_ASYNC_WAITDATA, &sk->sk_socket->flags)
+ sk_set_bit(SOCKWQ_ASYNC_WAITDATA, sk)
//# pattern-5, witnesses: 6
@@
@@
- SOCK_ASYNC_NOSPACE
+ SOCKWQ_ASYNC_NOSPACE
//# pattern-4, witnesses: 4
@@
@@
- clear_bit(SOCK_ASYNC_NOSPACE, &sk->sk_socket->flags)
+ sk_clear_bit(SOCKWQ_ASYNC_NOSPACE, sk)
