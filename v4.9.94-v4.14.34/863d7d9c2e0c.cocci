//# pattern-5, witnesses: 2
@@
identifier cd;
identifier fn;
identifier net;
@@
 void fn(struct cache_detail * cd, struct net * net)
 {
     <...
- remove_cache_proc_entries(cd, net)
+ remove_cache_proc_entries(cd)
     ...>
 }
