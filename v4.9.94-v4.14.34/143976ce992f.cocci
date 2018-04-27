//# pattern-5, witnesses: 6
@@
expression E0;
@@
- E0->refcnt = 1;
//# pattern-2, witnesses: 2
@@
expression E1;
identifier PV0;
identifier PV2;
@@
- cl = cops->get(PV0, E1);
- cops->put(PV2, cl);
+ cl = cops->find(PV0, E1);
