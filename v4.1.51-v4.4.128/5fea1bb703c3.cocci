//# pattern-4, witnesses: 2
@@
identifier sd;
identifier stdi;
identifier timings;
@@
 int stdi2dv_timings(struct v4l2_subdev * sd, struct stdi_readback * stdi, struct v4l2_dv_timings * timings)
 {
     <...
- v4l2_detect_cvt(stdi->lcf + 1, hfreq, stdi->lcvs,  | , false, timings)
+ v4l2_detect_cvt(stdi->lcf + 1, hfreq, stdi->lcvs, 0,  | , false, timings)
     ...>
 }
