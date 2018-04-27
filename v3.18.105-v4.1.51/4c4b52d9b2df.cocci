//# pattern-2, witnesses: 3
@@
identifier s;
@@
 struct rhashtable_params s = {
-    .grow_decision = rht_grow_above_75,
-    .shrink_decision = rht_shrink_below_30,
 };
//# pattern-1, witnesses: 2
@@
expression V0;
expression V1;
@@
- __rhashtable_insert(ht, obj, V0, V1)
+ __rhashtable_insert(ht, obj, V0, old_tbl, V1)
//# pattern-3, witnesses: 2
@@
@@
- if (ht->p.grow_decision || ht->p.shrink_decision) {
- }
