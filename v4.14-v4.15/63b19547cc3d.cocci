//# pattern-1, witnesses: 3
@@
identifier fn;
identifier pf;
identifier trig;
@@
 int fn(struct iio_trigger * trig, struct iio_poll_func * pf)
 {
     <...
- pf->indio_dev->info
+ pf->indio_dev
     ...>
 }
