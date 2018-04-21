//# pattern-1, witnesses: 2
@@
expression E0;
@@
- E0 = l_ctx->lockowner.l_owner
+ E0 = l_ctx->lockowner
//# pattern-2, witnesses: 2
@@
expression E1;
expression V0;
@@
- V0->lockowner.l_owner != E1
+ V0->lockowner != E1
