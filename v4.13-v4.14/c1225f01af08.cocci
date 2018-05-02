//# pattern-2, witnesses: 3
@@
expression E0;
expression E2;
expression F1;
@@
- bsg_setup_queue(dev, E0, F1, E2)
+ bsg_setup_queue(dev, E0, F1, E2, NULL)
