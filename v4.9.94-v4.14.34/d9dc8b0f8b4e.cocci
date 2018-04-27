//# pattern-1, witnesses: 17
@@
expression E0;
expression E1;
@@
- sk_wait_event(sk, E0, E1)
+ sk_wait_event(sk, E0, E1, &wait)
//# pattern-6, witnesses: 17
@@
identifier s;
@@
 wait_queue_t s = {
-    . = autoremove_wake_function,
+    . = woken_wake_function,
 };
//# pattern-3, witnesses: 9
@@
@@
- prepare_to_wait(sk_sleep(sk), &wait, TASK_INTERRUPTIBLE);
//# pattern-5, witnesses: 9
@@
expression list listE0;
@@
- finish_wait(listE0)
+ remove_wait_queue(listE0)
//# pattern-4, witnesses: 8
@@
@@
- finish_wait(sk_sleep(sk), &wait);
+ add_wait_queue(sk_sleep(sk), &wait);
+ remove_wait_queue(sk_sleep(sk), &wait);
//# pattern-7, witnesses: 8
@@
@@
- prepare_to_wait(sk_sleep(sk), &wait, TASK_INTERRUPTIBLE)
+ add_wait_queue(sk_sleep(sk), &wait)
