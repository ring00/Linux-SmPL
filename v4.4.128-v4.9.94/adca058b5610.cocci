//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier cb_buff;
identifier r0.fn;
@@
 int fn(struct iio_cb_buffer * cb_buff)
 {
     <...
- cb_buff->channels[0].indio_dev
+ cb_buff->indio_dev
     ...>
 }
