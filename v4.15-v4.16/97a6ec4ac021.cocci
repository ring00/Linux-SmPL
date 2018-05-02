//# pattern-3, witnesses: 6
@@
@@
- ret = rhashtable_walk_start(&iter);
- if (ret && ret != -EAGAIN) {
- }
+ rhashtable_walk_start(&iter);
//# pattern-6, witnesses: 6
@@
expression E1;
expression V0;
expression V2;
expression V3;
@@
- V0 = rhashtable_walk_start(E1);
- if (V2 && V3 != -EAGAIN) {
- }
+ rhashtable_walk_start(E1);
//# pattern-2, witnesses: 3
@@
expression V0;
expression V1;
@@
- V0 = ERR_PTR(rhashtable_walk_start(&iter));
- if (IS_ERR(V1)) {
- }
+ rhashtable_walk_start(&iter);
