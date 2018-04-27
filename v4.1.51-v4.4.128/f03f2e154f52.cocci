//# pattern-2, witnesses: 5
@@
expression list listE0;
@@
- inet_csk_reqsk_queue_drop(listE0)
+ inet_csk_reqsk_queue_drop_and_put(listE0)
