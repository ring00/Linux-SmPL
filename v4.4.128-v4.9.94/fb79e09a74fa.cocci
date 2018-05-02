//# pattern-1, witnesses: 3
@@
expression E0;
expression list listE1;
@@
- E0->trylock_bus(listE1)
+ i2c_trylock_bus(listE1)
