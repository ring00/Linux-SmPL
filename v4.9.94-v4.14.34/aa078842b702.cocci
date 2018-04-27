//# pattern-1, witnesses: 6
@@
expression F1;
identifier s;
@@
 const struct inet_connection_sock_af_ops s = {
-    .bind_conflict = F1,
 };
//# pattern-4, witnesses: 2
@r1@
identifier i, fn;
@@
struct proto i = {
    .get_port = fn,
};
@@
expression EC0;
identifier sk;
identifier snum;
@@
 int inet_csk_get_port(struct sock * sk, unsigned short snum)
 {
     <...
- inet_csk(sk)->icsk_af_ops->bind_conflict(sk, tb, EC0, reuseport_ok)
+ inet_csk_bind_conflict(sk, tb, EC0, reuseport_ok)
     ...>
 }
