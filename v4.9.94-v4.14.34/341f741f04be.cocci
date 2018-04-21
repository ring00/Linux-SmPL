//# pattern-3, witnesses: 6
@@
expression F1;
expression ME0;
@@
- INIT_WORK(&ME0, F1);
//# pattern-1, witnesses: 5
@r0@
identifier i, fn;
@@
struct afs_call_type i = {
    .deliver = fn,
};
@@
identifier call;
identifier r0.fn;
@@
 int fn(struct afs_call * call)
 {
     <...
- return 0;
+ return afs_queue_call_work(call);
     ...>
 }
//# pattern-2, witnesses: 5
@r1@
identifier i, fn;
@@
struct afs_call_type i = {
    .deliver = fn,
};
@@
identifier call;
identifier r1.fn;
@@
 int fn(struct afs_call * call)
 {
     <...
- queue_work(afs_wq, &call->work);
     ...>
 }
//# pattern-25, witnesses: 3
@@
expression list listE0;
@@
- afs_end_call(listE0)
+ afs_put_call(listE0)
//# pattern-11, witnesses: 2
@@
identifier s;
@@
 const struct afs_call_type s = {
+    .work = SRXAFSCB_InitCallBackState,
 };
//# pattern-17, witnesses: 2
@@
expression list listE0;
@@
- afs_free_call(listE0)
+ afs_put_call(listE0)
