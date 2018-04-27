//# pattern-6, witnesses: 2
@r0@
identifier i, fn;
@@
struct seq_operations i = {
    .show = fn,
};
@@
identifier r0.fn;
identifier seq;
identifier v;
@@
 int fn(struct seq_file * seq, void * v)
 {
     <...
+ if (sk->__sk_common.skc_state == TCP_TIME_WAIT) {
+ }
     ...>
 }
//# pattern-12, witnesses: 2
@@
expression F1;
identifier s;
@@
 const struct tcp_request_sock_ops s = {
-    .queue_hash_add = F1,
 };
