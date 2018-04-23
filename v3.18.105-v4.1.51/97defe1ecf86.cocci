//# pattern-12, witnesses: 3
@@
expression E1;
identifier s;
@@
 struct rhashtable_params s = {
-    .mutex_is_held = E1,
 };
