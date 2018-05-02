//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
typedef bool;
identifier cable_state;
identifier edev;
identifier id;
identifier r0.fn;
@@
- int fn(struct extcon_dev * edev, unsigned int id, bool cable_state)
+ int fn(struct extcon_dev * edev, unsigned int id, bool state)
 {
     <...
- is_extcon_changed(edev, index, cable_state)
+ is_extcon_changed(edev, index, state)
     ...>
 }
