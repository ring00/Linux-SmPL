//# pattern-1, witnesses: 9
@r0@
identifier i, fn;
@@
struct timer_list i = {
    .function = fn,
};
@@
identifier data;
identifier r0.fn;
@@
- void fn(unsigned long data)
+ void fn(struct timer_list * unused)
 { ... }
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct timer_list i = {
    .function = fn,
};
@@
identifier data;
identifier r1.fn;
typedef u_long;
@@
- void fn(u_long data)
+ void fn(struct timer_list * unused)
 { ... }
