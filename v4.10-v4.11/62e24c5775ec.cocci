//# pattern-4, witnesses: 5
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
typedef bool;
identifier index;
identifier rcdev;
identifier shared;
@@
- struct reset_control * __reset_control_get(struct reset_controller_dev * rcdev, unsigned int index, bool shared)
+ struct reset_control * __reset_control_get(struct device * dev, const char * id, int index, bool shared, bool optional)
 {
     <...
- struct reset_control * rstc = rstc;
- rstc = kzalloc(sizeof(unsigned long), GFP_KERNEL);
- E0;
     ...>
 }
