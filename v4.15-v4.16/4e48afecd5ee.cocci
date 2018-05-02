//# pattern-1, witnesses: 25
@@
expression E0;
@@
- E0->match.fwnode.fwnode
+ E0->match.fwnode
//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0->match.fwnode.fwnode == E1->match.fwnode.fwnode
+ E0->match.fwnode == E1->match.fwnode
