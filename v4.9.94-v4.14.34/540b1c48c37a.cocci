//# pattern-5, witnesses: 3
@@
@@
- lock_sock(sock->sk)
+ mutex_lock(&call->user_mutex)
//# pattern-9, witnesses: 3
@@
@@
- release_sock(sock->sk)
+ mutex_unlock(&call->user_mutex)
