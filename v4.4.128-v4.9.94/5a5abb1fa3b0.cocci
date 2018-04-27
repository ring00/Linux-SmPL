//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- sk_attach_filter(&tun->fprog, tfile->socket.sk)
+ __sk_attach_filter(&tun->fprog, tfile->socket.sk, lockdep_rtnl_is_held(listE0))
