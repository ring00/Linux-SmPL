//# pattern-2, witnesses: 2
@@
expression V0;
@@
- ret = PTR_ERR(V0->pctl);
//# pattern-4, witnesses: 2
@@
expression E2;
expression E4;
expression V0;
expression V1;
expression V3;
@@
- V0->pctl = pinctrl_register(&V1->desc, E2, V3);
- if (E4) {
- }
+ ret = pinctrl_register_and_init(&V1->desc, E2, V3, &V0->pctl);
+ if (ret) {
+ }
