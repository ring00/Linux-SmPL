//# pattern-1, witnesses: 4
@@
expression E0;
identifier fn;
identifier sc;
identifier shrinker;
@@
 unsigned long fn(struct shrinker * shrinker, struct shrink_control * sc)
 {
     <...
- list_lru_count_node(&E0, sc->nid)
+ list_lru_shrink_count(&E0, sc)
     ...>
 }
//# pattern-6, witnesses: 3
@@
expression E0;
expression E2;
expression E3;
expression F1;
identifier fn;
identifier sc;
identifier shrinker;
@@
 unsigned long fn(struct shrinker * shrinker, struct shrink_control * sc)
 {
     <...
- list_lru_walk_node(&E0, sc->nid, F1, E2, &E3)
+ list_lru_shrink_walk(&E0, sc, F1, E2)
     ...>
 }
//# pattern-2, witnesses: 2
@@
identifier fn;
identifier sc;
identifier shrink;
@@
 unsigned long fn(struct shrinker * shrink, struct shrink_control * sc)
 {
     <...
- unsigned long nr_to_scan = sc->nr_to_scan;
     ...>
 }
//# pattern-7, witnesses: 2
@@
expression ME0;
identifier sc;
identifier shrink;
@@
 unsigned long super_cache_count(struct shrinker * shrink, struct shrink_control * sc)
 {
     <...
- list_lru_count_node(&ME0, sc->nid)
+ list_lru_shrink_count(&ME0, sc)
     ...>
 }
