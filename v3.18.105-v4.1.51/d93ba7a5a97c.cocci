//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- blkdev_issue_zeroout(E0, E1, E2, E3)
+ blkdev_issue_zeroout(E0, E1, E2, E3, false)
