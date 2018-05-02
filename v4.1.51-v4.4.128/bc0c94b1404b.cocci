//# pattern-1, witnesses: 10
@@
expression E1;
expression E3;
expression ME2;
expression V0;
@@
- core_tpg_register(&V0, E1, &ME2, E3)
+ core_tpg_register(E1, &ME2, E3)
