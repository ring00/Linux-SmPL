//# pattern-4, witnesses: 7
@@
expression V0;
@@
- if (-EIOCBQUEUED == ret) {
- ret = wait_on_sync_kiocb(&V0);
- }
+ BUG_ON(ret == -EIOCBQUEUED);
//# pattern-1, witnesses: 4
@@
@@
- if (ret == -EIOCBQUEUED) {
- ret = wait_on_sync_kiocb(&kiocb);
- }
+ BUG_ON(ret == -EIOCBQUEUED);
