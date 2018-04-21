//# pattern-1, witnesses: 7
@@
@@
- if (!xdr_argsize_check(rqstp, p)) {
- return 0;
- }
- return 1;
+ return xdr_argsize_check(rqstp, p);
