//# pattern-10, witnesses: 4
@@
expression list listE0;
@@
- rcu_read_unlock(listE0);
//# pattern-11, witnesses: 3
@@
expression list listE0;
@@
- rcu_read_lock(listE0);
//# pattern-4, witnesses: 2
@@
identifier fn;
identifier task;
@@
 void fn(struct rpc_task * task)
 {
     <...
- xprt = rcu_dereference(task->tk_client->cl_xprt);
     ...>
 }
