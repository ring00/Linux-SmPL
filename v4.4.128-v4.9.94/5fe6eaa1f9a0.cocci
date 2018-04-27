//# pattern-2, witnesses: 4
@r0@
identifier i, fn;
@@
struct rpc_xprt_ops i = {
    .buf_alloc = fn,
};
@@
identifier r0.fn;
identifier size;
identifier task;
@@
- void * fn(struct rpc_task * task, size_t size)
+ int fn(struct rpc_task * task)
 {
     <...
- return NULL;
+ return -ENOMEM;
     ...>
 }
