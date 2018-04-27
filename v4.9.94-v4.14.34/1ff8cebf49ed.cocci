//# pattern-1, witnesses: 3
@@
expression E0;
@@
- E0 - CMSG_ALIGN(sizeof(unsigned long))
+ E0 - sizeof(unsigned long)
//# pattern-12, witnesses: 2
@@
@@
- ucmlen - CMSG_COMPAT_ALIGN(sizeof(unsigned long)) + CMSG_ALIGN(sizeof(unsigned long))
+ ucmlen - sizeof(unsigned long) + sizeof(unsigned long)
