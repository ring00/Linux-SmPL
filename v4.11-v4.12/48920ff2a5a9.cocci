//# pattern-1, witnesses: 8
@@
expression E0;
expression E1;
@@
- E0->discard_zeroes_data = E1;
//# pattern-8, witnesses: 3
@@
@@
- ti->discard_zeroes_data_unsupported = true;
//# pattern-4, witnesses: 2
@@
@@
- bdev_discard_zeroes_data(bdev)
+ 0
