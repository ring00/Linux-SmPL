//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression IL0;
identifier PV1;
typedef acpi_status;
identifier guid_string;
identifier in;
identifier instance;
identifier method_id;
identifier out;
typedef u32;
typedef u8;
@@
 acpi_status wmi_evaluate_method(const char * guid_string, u8 instance, u32 method_id, const struct acpi_buffer * in, struct acpi_buffer * out)
 {
     <...
- union acpi_object [3] params = params;
- params[IL0].integer.value = PV1;
     ...>
 }
//# pattern-5, witnesses: 2
@@
expression IL0;
@@
- union acpi_object [3] params = params;
- params[IL0].type = ACPI_TYPE_INTEGER;
//# pattern-8, witnesses: 2
@@
expression E0;
expression E1;
@@
- struct guid_block * block = NULL;
- block = &wblock->gblock;
- if (E0) {
- return E1;
- }
