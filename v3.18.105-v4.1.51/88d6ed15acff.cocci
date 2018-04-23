//# pattern-7, witnesses: 2
@@
expression E0;
@@
- E0->next
+ he->next
//# pattern-9, witnesses: 2
@@
identifier ht;
identifier n;
identifier new_tbl;
identifier old_tbl;
@@
 void hashtable_chain_unzip(const struct rhashtable * ht, const struct bucket_table * new_tbl, struct bucket_table * old_tbl, size_t n)
 {
     <...
- lockdep_rht_mutex_is_held(ht)
+ lockdep_rht_bucket_is_held(old_tbl, n)
     ...>
 }
