//# pattern-2, witnesses: 18
@@
expression list listE0;
@@
- global_page_state(listE0)
+ global_node_page_state(listE0)
//# pattern-3, witnesses: 10
@@
expression EC0;
@@
- zone_page_state(zone, EC0)
+ node_page_state(zone->zone_pgdat, EC0)
//# pattern-6, witnesses: 9
@@
expression EC0;
@@
- sum_zone_node_page_state(nid, EC0)
+ node_page_state(pgdat, EC0)
//# pattern-12, witnesses: 5
@@
expression list listE0;
@@
- dec_zone_page_state(listE0)
+ dec_node_page_state(listE0)
//# pattern-16, witnesses: 5
@@
expression list listE0;
@@
- inc_zone_page_state(listE0)
+ inc_node_page_state(listE0)
//# pattern-17, witnesses: 4
@@
expression E0;
@@
- mem_cgroup_page_lruvec(E0, zone)
+ mem_cgroup_page_lruvec(E0, zone->zone_pgdat)
//# pattern-1, witnesses: 3
@@
expression E0;
@@
- mod_zone_page_state(page_zone(page), NR_ISOLATED_ANON + page_lru, E0)
+ mod_node_page_state(page_pgdat(page), NR_ISOLATED_ANON + page_lru, E0)
//# pattern-4, witnesses: 2
@@
@@
- __mod_zone_page_state(zone, NR_PAGES_SCANNED, -nr_scanned)
+ __mod_node_page_state(zone->zone_pgdat, NR_PAGES_SCANNED, -nr_scanned)
//# pattern-7, witnesses: 2
@@
expression EC0;
expression IL1;
identifier cc;
identifier zone;
@@
 void acct_isolated(struct zone * zone, struct compact_control * cc)
 {
     <...
- mod_zone_page_state(zone, EC0, count[IL1])
+ mod_node_page_state(zone->zone_pgdat, EC0, count[IL1])
     ...>
 }
