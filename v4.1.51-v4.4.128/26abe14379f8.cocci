//# pattern-4, witnesses: 7
@@
expression E0;
@@
- sk_release_kernel(E0->sk)
+ sock_release(E0)
//# pattern-1, witnesses: 6
@@
expression E0;
expression E1;
expression E2;
@@
- sock_create_kern(&init_net, E0, E1, E2, &sock)
+ sock_create_kern(net, E0, E1, E2, &sock)
//# pattern-2, witnesses: 6
@@
expression E0;
@@
- sk_change_net(E0, net);
