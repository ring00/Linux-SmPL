//# pattern-1, witnesses: 2
@@
identifier fn;
identifier len;
identifier msg;
identifier sk;
@@
 int fn(struct sock * sk, struct msghdr * msg, size_t len)
 {
     <...
- sock_net(sk)
+ sk
     ...>
 }
