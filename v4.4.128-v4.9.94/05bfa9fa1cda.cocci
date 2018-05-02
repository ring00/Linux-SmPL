//# pattern-1, witnesses: 2
@@
expression ME1;
identifier PV0;
@@
- list_add_tail(&PV0->list, &ME1);
//# pattern-2, witnesses: 2
@@
expression E0;
@@
- list_del(&E0->list);
//# pattern-5, witnesses: 2
@@
expression V0;
@@
- V0->list
+ V0->graph_obj.list
