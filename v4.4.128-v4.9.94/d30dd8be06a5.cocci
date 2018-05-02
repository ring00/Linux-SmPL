//# pattern-1, witnesses: 2
@@
expression F0;
expression V1;
@@
- F0(V1, NR_KERNEL_STACK) * THREAD_SIZE / 1024
+ F0(V1, NR_KERNEL_STACK_KB)
