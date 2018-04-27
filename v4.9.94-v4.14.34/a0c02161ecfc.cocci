//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- E0 = devm_kzalloc(E1, sizeof(unsigned long), GFP_KERNEL);
- E2->dev = E3;
+ E0 = dsa_switch_alloc(E1, DSA_MAX_PORTS);
