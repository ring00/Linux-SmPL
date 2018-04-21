//# pattern-2, witnesses: 33
@@
@@
- wait
+ wq_entry
//# pattern-1, witnesses: 3
@@
expression F0;
@@
- struct wait_bit_queue wait = ;
- return F0(wq_head, &wait, action, mode);
+ struct wait_bit_queue wq_entry = ;
+ return F0(wq_head, &wq_entry, action, mode);
