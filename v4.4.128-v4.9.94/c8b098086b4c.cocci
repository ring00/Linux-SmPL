//# pattern-2, witnesses: 22
@@
expression E0;
@@
- ds->ports[E0]
+ ds->ports[E0].netdev
//# pattern-1, witnesses: 4
@@
expression E0;
@@
- E0 || ds->ports[source_port] == NULL
+ E0 || !ds->ports[source_port].netdev
