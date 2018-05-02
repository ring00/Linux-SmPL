//# pattern-5, witnesses: 4
@@
expression E0;
expression E1;
@@
- E0->lldd_max_execute_num = E1;
//# pattern-6, witnesses: 4
@@
expression E0;
expression E1;
@@
- E0->lldd_queue_size = E1;
//# pattern-13, witnesses: 3
@@
@@
- &task->list;
//# pattern-8, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier r0.fn;
identifier sas_ha;
@@
 int fn(struct sas_ha_struct * sas_ha)
 {
     <...
- if (sas_ha->lldd_max_execute_num > 1) {
- E0;
- }
     ...>
 }
//# pattern-10, witnesses: 2
@@
identifier fn;
identifier task;
@@
 void fn(struct sas_task * task)
 { ... }
