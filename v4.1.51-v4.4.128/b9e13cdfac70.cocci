//# pattern-2, witnesses: 2
@@
identifier s;
@@
 struct svc_serv_ops s = {
+    .svo_enqueue_xprt = svc_xprt_do_enqueue,
 };
//# pattern-3, witnesses: 2
@@
identifier fn;
expression list listE0;
identifier xprt;
@@
 void fn(struct svc_xprt * xprt)
 {
     <...
- svc_xprt_do_enqueue(listE0)
+ xprt->xpt_server->sv_ops->svo_enqueue_xprt(listE0)
     ...>
 }
