//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct saa7146_use_ops i = {
    .init = fn,
};
@@
expression ME0;
expression ME1;
identifier dev;
identifier r0.fn;
identifier vv;
@@
 void fn(struct saa7146_dev * dev, struct saa7146_vv * vv)
 {
     <...
- setup_timer(&ME0.timeout, saa7146_buffer_timeout, &ME1);
+ timer_setup(&ME0.timeout, saa7146_buffer_timeout);
     ...>
 }
