//# pattern-8, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression BO0;
typedef __be64;
identifier cm_id;
identifier compare_data;
identifier service_id;
identifier service_mask;
@@
 int ib_cm_listen(struct ib_cm_id * cm_id, __be64 service_id, __be64 service_mask, struct ib_cm_compare_data * compare_data)
 {
     <...
- if (BO0) {
- return -EINVAL;
- }
     ...>
 }
