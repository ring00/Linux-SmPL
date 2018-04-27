//# pattern-1, witnesses: 3
@@
identifier con;
identifier fn;
@@
 int fn(struct ceph_connection * con)
 {
     <...
- !con->msgr->nocrc
+ !ceph_test_opt(from_msgr)
     ...>
 }
