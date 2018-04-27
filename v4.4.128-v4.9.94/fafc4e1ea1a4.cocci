//# pattern-1, witnesses: 2
@@
@@
- WARN_ON_ONCE(sock_owned_by_user);
//# pattern-6, witnesses: 2
@@
@@
- BUG_ON(sock_owned_by_user)
+ BUG_ON(!sock_allow_reclassification(sk))
