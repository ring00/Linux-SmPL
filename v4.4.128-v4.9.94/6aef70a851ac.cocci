//# pattern-3, witnesses: 11
@@
expression EC0;
@@
- UDP_INC_STATS_USER(sock_net(sk), EC0, is_udplite)
+ UDP_INC_STATS(sock_net(sk), EC0, is_udplite)
//# pattern-1, witnesses: 7
@@
expression EC0;
@@
- UDP6_INC_STATS_USER(sock_net(sk), EC0, is_udplite)
+ UDP6_INC_STATS(sock_net(sk), EC0, is_udplite)
//# pattern-2, witnesses: 3
@r0@
identifier i, fn;
@@
struct proto i = {
    .recvmsg = fn,
};
@@
expression EC0;
identifier addr_len;
identifier flags;
identifier len;
identifier msg;
identifier nonblock;
identifier sk;
@@
 int tcp_recvmsg(struct sock * sk, struct msghdr * msg, size_t len, int nonblock, int flags, int * addr_len)
 {
     <...
- NET_ADD_STATS_USER(sock_net(sk), EC0, chunk)
+ NET_ADD_STATS(sock_net(sk), EC0, chunk)
     ...>
 }
//# pattern-4, witnesses: 3
@@
expression EC0;
@@
- NET_INC_STATS_USER(sock_net(sk), EC0)
+ NET_INC_STATS(sock_net(sk), EC0)
