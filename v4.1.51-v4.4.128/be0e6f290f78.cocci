//# pattern-3, witnesses: 2
@@
@@
- dequeue_signal_lock(current, &current->blocked, &info)
+ kernel_dequeue_signal(NULL)
