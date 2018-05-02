//# pattern-3, witnesses: 3
@@
@@
- struct nvm_dev * dev = dev;
- dev = nvm_find_nvm_dev(fact.dev);
//# pattern-18, witnesses: 2
@@
expression list listE0;
@@
- dev->mt->trans_ppa(listE0)
+ nvm_trans_ppa(listE0)
