//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct inet_connection_sock_af_ops i = {
    .bind_conflict = fn,
};
@@
typedef bool;
identifier r0.fn;
identifier relax;
identifier s;
identifier sk;
identifier tb;
@@
- - int s = {
+ bool s = {
 };
int fn(const struct sock * sk, const struct inet_bind_bucket * tb, bool relax)
+ int fn(const struct sock * sk, const struct inet_bind_bucket * tb, bool relax, bool reuseport_ok)
 {
     <...
- int s = {
+ bool s = {
 };
     ...>
 }
