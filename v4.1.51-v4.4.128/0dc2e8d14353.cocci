//# pattern-3, witnesses: 2
@@
expression E0;
expression E1;
@@
- pr_debug();
- E0;
- E1;
+ pr_debug();
//# pattern-4, witnesses: 2
@@
expression V0;
@@
- V0->tf_name
+ V0->tf_ops->name
