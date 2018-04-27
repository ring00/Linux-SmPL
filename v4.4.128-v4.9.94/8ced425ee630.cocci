//# pattern-1, witnesses: 2
@@
expression list listE0;
@@
- __sk_attach_filter(&tun->fprog, tfile->socket.sk, lockdep_rtnl_is_held(listE0))
+ sk_attach_filter(&tun->fprog, tfile->socket.sk)
