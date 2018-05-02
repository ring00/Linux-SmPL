//# pattern-5, witnesses: 71
@@
expression IL0;
@@
- IRDA_DEBUG(IL0, );
//# pattern-2, witnesses: 36
@@
expression E1;
expression IL0;
@@
- IRDA_DEBUG(IL0, , E1)
+ pr_debug(, E1)
//# pattern-6, witnesses: 22
@@
expression IL0;
@@
- IRDA_DEBUG(IL0, )
+ pr_debug()
//# pattern-8, witnesses: 17
@@
expression E1;
expression E2;
expression IL0;
@@
- IRDA_DEBUG(IL0, , E1, E2);
+ pr_debug(, E1, E2);
//# pattern-3, witnesses: 5
@@
expression IL0;
expression IL1;
expression IL2;
@@
- IRDA_DEBUG(IL0, );
- IRDA_DEBUG(IL1, , );
- IRDA_DEBUG(IL2, );
+ pr_debug(, );
//# pattern-24, witnesses: 4
@@
@@
- IRDA_DEBUG(0, );
+ pr_debug();
//# pattern-7, witnesses: 3
@@
@@
- IRDA_DEBUG(1, );
+ pr_debug();
//# pattern-9, witnesses: 3
@@
expression IL0;
@@
- IRDA_DEBUG(IL0);
+ pr_debug;
//# pattern-11, witnesses: 3
@@
expression E2;
expression IL0;
expression IL1;
expression IL3;
@@
- IRDA_DEBUG(IL0, );
- IRDA_DEBUG(IL1, , , E2);
- IRDA_DEBUG(IL3, );
+ pr_debug(, , E2);
//# pattern-12, witnesses: 2
@@
expression E1;
expression E2;
expression IL0;
@@
- IRDA_DEBUG(IL0, , , E1->fir_base, E2->irq);
+ pr_debug(, , E1->fir_base, E2->irq);
//# pattern-28, witnesses: 2
@@
@@
- IRDA_DEBUG(1, , );
+ pr_debug(, );
//# pattern-43, witnesses: 2
@@
expression IL0;
expression IL1;
@@
- IRDA_DEBUG(IL0, );
- IRDA_DEBUG(IL1, , );
+ pr_debug(, );
