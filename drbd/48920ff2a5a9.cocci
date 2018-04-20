//# pattern-1, witnesses: 13
@@
expression E0;
expression E1;
@@
- E0->discard_zeroes_data = E1;
//# pattern-5, witnesses: 5
@@
@@
- ti->discard_zeroes_data_unsupported = true;
//# pattern-6, witnesses: 2
@@
@@
- bdev_discard_zeroes_data(bdev)
+ 0
