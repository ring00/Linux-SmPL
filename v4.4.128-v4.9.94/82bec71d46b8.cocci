//# pattern-5, witnesses: 2
@@
@@
- nf_tables_unregister_hooks(trans->ctx.table, trans->ctx.chain, trans->ctx.afi->nops)
+ nf_tables_unregister_hooks(trans->ctx.net, trans->ctx.table, trans->ctx.chain, trans->ctx.afi->nops)
