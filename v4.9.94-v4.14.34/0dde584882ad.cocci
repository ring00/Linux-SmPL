//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct ceph_connection_operations i = {
    .verify_authorizer_reply = fn,
};
@@
expression ME0;
identifier con;
identifier len;
@@
- int verify_authorizer_reply(struct ceph_connection * con, int len)
+ int verify_authorizer_reply(struct ceph_connection * con)
 {
     <...
- ceph_auth_verify_authorizer_reply(ac, ME0.authorizer, len)
+ ceph_auth_verify_authorizer_reply(ac, ME0.authorizer)
     ...>
 }
