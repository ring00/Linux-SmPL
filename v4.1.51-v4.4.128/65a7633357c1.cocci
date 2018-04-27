//# pattern-3, witnesses: 2
@@
expression EC0;
identifier con;
identifier fn;
@@
 int fn(struct ceph_connection * con)
 {
     <...
- con->out_kvec_is_msg = EC0;
     ...>
 }
