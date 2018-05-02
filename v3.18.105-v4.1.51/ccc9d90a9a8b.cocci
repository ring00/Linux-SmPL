//# pattern-1, witnesses: 4
@@
expression E0;
identifier PV1;
expression V2;
@@
- xenbus_map_ring_valloc(E0, PV1, &V2)
+ xenbus_map_ring_valloc(E0, &PV1, 1, &V2)
