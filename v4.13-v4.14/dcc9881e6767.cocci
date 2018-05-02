//# pattern-2, witnesses: 3
@@
expression E0;
@@
- if (ib_register_event_handler(&E0->event_handler)) {
- }
+ ib_register_event_handler(&E0->event_handler);
//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier event_handler;
identifier r0.fn;
@@
- int fn(struct ib_event_handler * event_handler)
+ void fn(struct ib_event_handler * event_handler)
 {
     <...
- return 0;
     ...>
 }
