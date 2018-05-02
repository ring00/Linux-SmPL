//# pattern-1, witnesses: 3
@@
identifier fn;
identifier rcd;
identifier thread;
@@
 int fn(struct hfi1_ctxtdata * rcd, int thread)
 {
     <...
- prescan_rxq(&packet);
+ prescan_rxq(rcd->ppd->cc_prescan, &packet);
     ...>
 }
