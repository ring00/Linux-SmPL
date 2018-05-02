//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier ir_raw_handler;
identifier r0.fn;
@@
 void fn(struct ir_raw_handler * ir_raw_handler)
 {
     <...
- if (ir_raw_handler->encode) {
- }
     ...>
 }
