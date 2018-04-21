//# pattern-5, witnesses: 2
@@
identifier s;
@@
- struct completion s = {
+ struct wb_completion s = {
 };
//# pattern-6, witnesses: 2
@@
@@
- wait_for_completion(&done)
+ wb_wait_for_completion(bdi, &done)
