//# pattern-2, witnesses: 3
@r0@
identifier i, fn;
@@
struct tracepoint i = {
    .regfunc = fn,
};
@@
identifier r0.fn;
@@
- void fn()
+ int fn()
 {
     ...
+ return 0;
 }
