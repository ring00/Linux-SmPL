//# pattern-16, witnesses: 6
@r0@
identifier i, fn;
@@
struct device_attribute i = {
    .show = fn,
};
@@
expression E1;
expression V0;
identifier attr;
identifier buf;
identifier dev;
identifier r0.fn;
@@
 ssize_t fn(struct device * dev, struct device_attribute * attr, char * buf)
 {
     <...
- int n = cpulist_scnprintf(buf, PAGE_SIZE - 2, &V0);
- buf[E1] = ;
     ...>
 }
//# pattern-15, witnesses: 3
@r1@
identifier i, fn;
@@
struct device_attribute i = {
    .show = fn,
};
@@
expression V0;
identifier attr;
identifier buf;
identifier dev;
identifier r1.fn;
@@
 ssize_t fn(struct device * dev, struct device_attribute * attr, char * buf)
 {
     <...
- int n = cpulist_scnprintf(buf, PAGE_SIZE - 2, &V0);
- return n;
+ return cpumap_print_to_pagebuf(true, buf, &V0);
     ...>
 }
//# pattern-6, witnesses: 2
@r2@
identifier i, fn;
@@
struct device_attribute i = {
    .show = fn,
};
@@
expression E0;
identifier attr;
identifier buf;
identifier dev;
@@
 ssize_t amd_uncore_attr_show_cpumask(struct device * dev, struct device_attribute * attr, char * buf)
 {
     <...
- int n = n;
- n = cpulist_scnprintf(buf, PAGE_SIZE - 2, active_mask);
- buf[E0] = ;
     ...>
 }
//# pattern-14, witnesses: 2
@r3@
identifier i, fn;
@@
struct device_attribute i = {
    .show = fn,
};
@@
expression E0;
identifier attr;
identifier buf;
identifier dev;
@@
 ssize_t acpi_pad_idlecpus_show(struct device * dev, struct device_attribute * attr, char * buf)
 {
     <...
- int n = 0;
- n = cpumask_scnprintf(buf, PAGE_SIZE - 2, to_cpumask(pad_busy_cpus_bits));
- buf[E0] = ;
     ...>
 }
