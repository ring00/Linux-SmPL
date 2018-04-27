//# pattern-2, witnesses: 2
@@
statement S0;
@@
- if (!kgd2kfd_init(KFD_INTERFACE_VERSION, &kgd2kfd)) { S0 }
+ if (kgd2kfd_init(KFD_INTERFACE_VERSION, &kgd2kfd)) { S0 }
