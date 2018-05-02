//# pattern-18, witnesses: 2
@r0@
identifier i, fn;
@@
struct acpi_buffer i = {
    .length = fn,
};
@@
expression E0;
identifier ares;
typedef bool;
identifier r0.fn;
identifier res;
@@
- bool fn(struct acpi_resource * ares, struct resource * res)
+ bool fn(struct acpi_resource * ares, struct resource_win * win)
 {
     <...
- res->flags = E0
+ win->res.flags = E0
     ...>
 }
//# pattern-23, witnesses: 2
@r1@
identifier i, fn;
@@
struct acpi_buffer i = {
    .length = fn,
};
@@
expression E0;
expression V1;
identifier ares;
typedef bool;
identifier r1.fn;
identifier win;
@@
 bool fn(struct acpi_resource * ares, struct resource_win * win)
 {
     <...
- acpi_decode_space(res, E0, &V1->address)
+ acpi_decode_space(win, E0, &V1->address)
     ...>
 }
