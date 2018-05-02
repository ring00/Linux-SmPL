//# pattern-2, witnesses: 14
@@
expression V0;
@@
- V0.minimum
+ V0.address.minimum
//# pattern-9, witnesses: 9
@@
expression V0;
@@
- V0.address_length
+ V0.address.address_length
//# pattern-1, witnesses: 4
@@
identifier s;
@@
 struct acpi_rsdump_info [8] s = {
 };
//# pattern-3, witnesses: 4
@@
expression E0;
expression E1;
@@
- E0 = E1->maximum
+ E0 = E1->address.maximum
//# pattern-5, witnesses: 4
@@
identifier s;
@@
 struct acpi_rsconvert_info [5] s = {
 };
//# pattern-6, witnesses: 4
@@
expression E0;
expression E1;
@@
- E0->minimum = E1
+ E0->address.minimum = E1
//# pattern-11, witnesses: 4
@@
expression E1;
expression F0;
identifier dev;
identifier fn;
identifier option_flags;
identifier r;
@@
 void fn(struct pnp_dev * dev, unsigned int option_flags, struct acpi_resource * r)
 {
     <...
- F0(dev, option_flags, p->minimum, p->minimum, 0, p->address_length, E1)
+ F0(dev, option_flags, p->address.minimum, p->address.minimum, 0, p->address.address_length, E1)
     ...>
 }
//# pattern-15, witnesses: 4
@@
@@
- addr.maximum
+ addr.address.maximum
//# pattern-8, witnesses: 3
@@
typedef acpi_status;
identifier addr;
identifier resource;
@@
 acpi_status resource_to_addr(struct acpi_resource * resource, struct acpi_resource_address64 * addr)
 {
     <...
- addr->minimum + addr->address_length
+ addr->address.minimum + addr->address.address_length
     ...>
 }
//# pattern-10, witnesses: 3
@@
@@
- addr.translation_offset
+ addr.address.translation_offset
//# pattern-12, witnesses: 3
@@
expression E0;
typedef acpi_status;
identifier addr;
identifier resource;
@@
 acpi_status resource_to_addr(struct acpi_resource * resource, struct acpi_resource_address64 * addr)
 {
     <...
- addr->address_length = E0
+ addr->address.address_length = E0
     ...>
 }
//# pattern-7, witnesses: 2
@r0@
identifier fn;
expression P0, P1, P3;
@@
acpi_walk_resources(P0, P1, fn, P3)
@@
typedef acpi_status;
identifier ctx;
identifier res;
@@
 acpi_status vmbus_walk_resources(struct acpi_resource * res, void * ctx)
 {
     <...
- res->data.address64
+ res->data.address64.address
     ...>
 }
