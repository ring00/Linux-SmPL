//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct rpc_xprt_ops i = {
    .buf_free = fn,
};
@@
identifier buffer;
identifier r0.fn;
@@
- void fn(void * buffer)
+ void fn(struct rpc_task * task)
 {
     <...
- if (!buffer) {
- return;
- }
+ void * buffer = task->tk_rqstp->rq_buffer;
     ...>
 }
