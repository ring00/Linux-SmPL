//# pattern-2, witnesses: 2
@@
expression BO0;
expression ME1;
@@
- if (BO0) {
- kfifo_free(&ME1);
- }
//# pattern-12, witnesses: 2
@@
@@
- rcdev->wait_poll
+ fh->wait_poll
