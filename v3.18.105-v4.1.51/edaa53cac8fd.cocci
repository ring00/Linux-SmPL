//# pattern-4, witnesses: 8
@@
expression E0;
@@
- E0->es_stats_lru_cnt
+ E0->es_stats_shk_cnt
//# pattern-7, witnesses: 4
@@
@@
- i_es_lru
+ i_es_list
//# pattern-10, witnesses: 4
@@
expression list listE0;
@@
- ext4_es_lru_add(listE0)
+ ext4_es_list_add(listE0)
//# pattern-2, witnesses: 3
@@
expression list listE0;
@@
- ext4_es_lru_del(listE0)
+ ext4_es_list_del(listE0)
//# pattern-3, witnesses: 3
@@
expression list listE0;
@@
- __ext4_es_shrink(listE0)
+ __es_shrink(listE0)
//# pattern-12, witnesses: 3
@@
expression E0;
@@
- E0->s_es_lru_lock
+ E0->s_es_lock
//# pattern-5, witnesses: 2
@@
expression E0;
@@
- E0->i_es_lru_nr
+ E0->i_es_shk_nr
//# pattern-9, witnesses: 2
@@
expression E0;
@@
- E0->s_es_lru
+ E0->s_es_list
