//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- svc_set_num_threads(listE0)
+ nn->nfsd_serv->sv_ops->svo_setup(listE0)
