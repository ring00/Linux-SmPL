//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier data;
identifier func;
identifier queue;
@@
- struct rpc_task * rpc_wake_up_first(struct rpc_wait_queue * queue, bool (*)(struct rpc_task *, void *) func, void * data)
+ struct rpc_task * rpc_wake_up_first(struct rpc_wait_queue * queue, bool (*)(struct rpc_task *, void *) func, void * data)
 {
     <...
- &queue->lock;
     ...>
 }
//# pattern-6, witnesses: 2
@@
expression F0;
identifier fn;
identifier xprt;
@@
 void fn(struct rpc_xprt * xprt)
 {
     <...
- rpc_wake_up_first(&xprt->sending, F0, xprt)
+ rpc_wake_up_first_on_wq(xprtiod_workqueue, &xprt->sending, F0, xprt)
     ...>
 }
