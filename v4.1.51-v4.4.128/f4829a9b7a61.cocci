//# pattern-7, witnesses: 2
@@
expression E0;
expression E2;
expression IL1;
@@
- E0->errors = -IL1;
- blk_mq_complete_request(E2);
+ blk_mq_complete_request(E2, -IL1);
