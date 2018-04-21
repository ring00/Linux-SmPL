//# pattern-1, witnesses: 3
@@
expression E0;
expression E1;
@@
- ceph_auth_destroy_authorizer(E0, E1->authorizer)
+ ceph_auth_destroy_authorizer(E1->authorizer)
//# pattern-4, witnesses: 2
@@
@@
- xi->built_authorizer = false;
//# pattern-5, witnesses: 2
@@
expression F1;
identifier s;
@@
 const struct ceph_auth_client_ops s = {
-    .destroy_authorizer = F1,
 };
