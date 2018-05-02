//# pattern-2, witnesses: 13
@@
expression E0;
@@
- E0->netdev
+ E0->master
//# pattern-1, witnesses: 7
@@
expression E0;
@@
- ds->ports[E0].netdev
+ ds->ports[E0].slave
//# pattern-3, witnesses: 7
@@
@@
- port->netdev
+ port->slave
