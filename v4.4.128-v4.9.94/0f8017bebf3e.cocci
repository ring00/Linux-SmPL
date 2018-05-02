//# pattern-2, witnesses: 14
@@
expression E0;
@@
- E0->ctrl_class
+ E0->which
//# pattern-1, witnesses: 8
@@
expression E0;
@@
- V4L2_CTRL_ID2CLASS(E0)
+ V4L2_CTRL_ID2WHICH(E0)
//# pattern-5, witnesses: 2
@@
expression E0;
@@
- V4L2_CTRL_ID2CLASS(E0.ctrl_class)
+ V4L2_CTRL_ID2WHICH(E0.which)
