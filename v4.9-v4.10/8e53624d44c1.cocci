//# pattern-16, witnesses: 3
@@
expression E0;
expression E1;
@@
- E0[E1 - rrpc->poffset]
+ E0[E1]
//# pattern-17, witnesses: 3
@@
@@
- pr_debug(, rlun->parent->chnl_id, rlun->parent->lun_id)
+ pr_debug(, rlun->bppa.g.ch, rlun->bppa.g.lun)
//# pattern-3, witnesses: 2
@@
@@
- gp->addr
+ gp
//# pattern-22, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0 = rrpc_ppa_to_gaddr(E1, p->addr)
+ E0 = p
//# pattern-31, witnesses: 2
@@
@@
- dev->parent
+ dev
