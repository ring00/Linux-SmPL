//# pattern-2, witnesses: 9
@@
expression E0;
@@
- E0.tv64
+ E0
//# pattern-5, witnesses: 6
@@
expression E0;
expression E1;
@@
- E0.tv64 = E1
+ E0 = E1
//# pattern-16, witnesses: 6
@@
@@
- ktime_to_timespec
+ ktime_to_timespec
//# pattern-22, witnesses: 6
@@
expression E0;
expression E1;
expression E2;
@@
- E0 = ktime_add(E1, E2)
+ E0 = ktime_add(E1, E2)
//# pattern-8, witnesses: 3
@@
expression E0;
expression E1;
@@
- E0.tv64 > E1.tv64
+ E0 > E1
//# pattern-12, witnesses: 3
@@
expression E0;
expression E1;
@@
- E0.tv64 < E1.tv64
+ E0 < E1
//# pattern-18, witnesses: 3
@@
expression E0;
expression E1;
@@
- E0.tv64 < E1
+ E0 < E1
//# pattern-24, witnesses: 3
@@
expression E0;
expression E1;
@@
- E0.tv64 >= E1.tv64
+ E0 >= E1
//# pattern-28, witnesses: 3
@@
expression E0;
@@
- E0 && ctx->tintv.tv64
+ E0 && ctx->tintv
//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- E0 = ktime_add_ns(E1, E2 * E3)
+ E0 = ktime_add_ns(E1, E2 * E3)
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- delta = ktime_sub(now, E0);
- if (delta.tv64 < 0) {
- }
+ delta = ktime_sub(now, E0);
+ if (delta < 0) {
+ }
//# pattern-11, witnesses: 2
@@
expression E1;
expression ME0;
@@
- ME0.tv64 != E1
+ ME0 != E1
//# pattern-19, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier PV0;
typedef ktime_t;
identifier lhs;
identifier rhs;
@@
 ktime_t ktime_add_safe(const ktime_t lhs, const ktime_t rhs)
 {
     <...
- res.tv64 < PV0.tv64
+ res < PV0
     ...>
 }
//# pattern-27, witnesses: 2
@@
expression E0;
expression ME1;
@@
- ktime_sub(E0, ME1)
+ ktime_sub(E0, ME1)
//# pattern-31, witnesses: 2
@@
expression E0;
@@
+ E0
