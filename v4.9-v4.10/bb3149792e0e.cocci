//# pattern-2, witnesses: 2
@@
expression E1;
expression V0;
@@
- nvm_erase_ppa(dev, V0, E1)
+ nvm_erase_ppa(dev, V0, E1, 0)
