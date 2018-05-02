//# pattern-1, witnesses: 12
@@
expression E1;
expression IL0;
@@
- HYPERVISOR_vcpu_op(IL0, cpu, E1)
+ HYPERVISOR_vcpu_op(IL0, xen_vcpu_nr(cpu), E1)
//# pattern-4, witnesses: 2
@@
@@
- smp_processor_id
+ xen_vcpu_nr(smp_processor_id)
