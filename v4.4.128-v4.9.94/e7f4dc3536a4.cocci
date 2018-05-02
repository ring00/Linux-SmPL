//# pattern-8, witnesses: 6
@@
expression E0;
@@
- kfree(E0->irq);
//# pattern-5, witnesses: 3
@@
expression E0;
expression E1;
@@
- E0->irq = E1;
//# pattern-2, witnesses: 2
@@
expression BO3;
expression E1;
expression E2;
expression V0;
expression V4;
@@
- int  = V0;
- E1->irq = ;
- if (E2) {
- }
- if (BO3) {
- }
+ if (V4 BO3 0) {
+ }
//# pattern-4, witnesses: 2
@@
expression E0;
expression E1;
@@
- if (!E0->irq) {
- E1;
- }
