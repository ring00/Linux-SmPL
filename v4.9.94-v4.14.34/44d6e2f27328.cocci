//# pattern-2, witnesses: 7
@@
expression BO1;
expression E0;
expression E3;
expression E4;
expression EC2;
@@
- NF_CT_ASSERT(E0 && BO1 || ctinfo == EC2)
+ WARN_ON(!E0 && E3 BO1 E4 || ctinfo == EC2)
//# pattern-4, witnesses: 6
@@
expression E0;
@@
- NF_CT_ASSERT(!E0)
+ WARN_ON(E0)
//# pattern-6, witnesses: 6
@@
expression E0;
expression E2;
expression EC1;
expression EC3;
@@
- NF_CT_ASSERT(E0 == EC1 || E2 == EC3)
+ WARN_ON(E0 != EC1 && E2 != EC3)
//# pattern-1, witnesses: 5
@@
expression E0;
@@
- NF_CT_ASSERT(E0)
+ WARN_ON(!E0)
//# pattern-5, witnesses: 3
@@
expression E0;
expression E1;
@@
- NF_CT_ASSERT(E0 == E1)
+ WARN_ON(E0 != E1)
