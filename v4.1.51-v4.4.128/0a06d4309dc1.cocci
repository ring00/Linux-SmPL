//# pattern-1, witnesses: 4
@@
expression V0;
expression V1;
@@
- struct target_backend_cits * tbc = &V0.tb_cits;
- tbc->tb_dev_attrib_cit.ct_attrs = V1;
//# pattern-2, witnesses: 4
@@
expression V0;
@@
- target_core_setup_sub_cits(&V0);
//# pattern-28, witnesses: 4
@@
@@
- hba->transport
+ hba->backend->ops
//# pattern-31, witnesses: 4
@@
expression E0;
@@
- E0->transport
+ E0->backend
//# pattern-32, witnesses: 2
@@
@@
- hba->transport
+ hba->backend->ops
