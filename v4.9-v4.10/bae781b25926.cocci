//# pattern-1, witnesses: 52
@@
expression E0;
expression E1;
@@
- E0->modifier[E1]
+ E0->modifier
//# pattern-2, witnesses: 3
@@
expression V0;
@@
- V0->base.modifier[0]
+ V0->base.modifier
//# pattern-6, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0->modifier[0] != E1->modifier[0]
+ E0->modifier != E1->modifier
