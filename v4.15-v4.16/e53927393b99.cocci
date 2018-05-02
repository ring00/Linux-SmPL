//# pattern-3, witnesses: 2
@@
expression BO0;
expression E1;
identifier create;
@@
 int __nvm_configure_create(struct nvm_ioctl_create * create)
 {
     <...
- struct nvm_ioctl_create_simple * s = s;
- s = &create->conf.s;
- if (BO0) {
- E1;
- }
     ...>
 }
