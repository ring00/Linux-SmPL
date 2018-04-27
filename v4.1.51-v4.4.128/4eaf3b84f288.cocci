//# pattern-1, witnesses: 6
@@
expression E0;
@@
- E0 |= TCQ_F_ONETXQUEUE
+ E0 |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT
