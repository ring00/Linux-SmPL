//# pattern-2, witnesses: 3
@@
expression E0;
@@
- E0 & VM_FAULT_SIGBUS
+ E0 & VM_FAULT_SIGBUS | VM_FAULT_SIGSEGV
