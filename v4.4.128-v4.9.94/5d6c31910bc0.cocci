//# pattern-8, witnesses: 11
@@
expression E0;
expression list listE1;
@@
- E0->i_op->getxattr(listE1)
+ __vfs_getxattr(listE1)
//# pattern-9, witnesses: 9
@@
expression E0;
@@
- !E0->i_op->getxattr
+ !E0->i_opflags & IOP_XATTR
//# pattern-1, witnesses: 3
@@
expression V0;
expression list listE1;
@@
- V0->i_op->removexattr(listE1)
+ __vfs_removexattr(listE1)
//# pattern-10, witnesses: 3
@@
expression E0;
expression list listE1;
@@
- E0->i_op->setxattr(listE1)
+ __vfs_setxattr(listE1)
//# pattern-2, witnesses: 2
@@
identifier PV0;
statement S1;
@@
- if (PV0->i_op->getxattr == NULL) { S1 }
+ if (!PV0->i_opflags & IOP_XATTR) { S1 }
//# pattern-5, witnesses: 2
@@
expression E1;
expression ME0;
@@
- if (!ME0) {
- return E1;
- }
//# pattern-13, witnesses: 2
@@
expression V0;
@@
- !V0->i_op->removexattr
+ !V0->i_opflags & IOP_XATTR
