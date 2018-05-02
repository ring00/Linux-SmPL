//# pattern-1, witnesses: 3
@@
expression E0;
expression E3;
expression E4;
expression ME2;
expression V1;
@@
- v4l2_detect_gtf(E0, V1, ME2, E3, E4, timings)
+ v4l2_detect_gtf(E0, V1, ME2, E3, false, E4, timings)
//# pattern-2, witnesses: 3
@@
expression E0;
expression E3;
expression ME2;
expression V1;
@@
- v4l2_detect_cvt(E0, V1, ME2, E3, timings)
+ v4l2_detect_cvt(E0, V1, ME2, E3, false, timings)
