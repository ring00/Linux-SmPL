//# pattern-5, witnesses: 4
@@
expression E0;
@@
- E0->ether
+ E0->add_mac
//# pattern-6, witnesses: 3
@@
expression E0;
@@
- if (set->dsize) {
- map->extensions = ip_set_alloc(set->dsize * E0);
- if (!map->extensions) {
- kfree(map->members);
- return false;
- }
- }
//# pattern-11, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
@@
- get_elem(map->extensions, E0, dsize)
+ get_const_elem(map->extensions + E1 * E2)
