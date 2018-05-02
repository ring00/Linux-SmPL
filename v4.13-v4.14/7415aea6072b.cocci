//# pattern-5, witnesses: 3
@@
expression E0;
expression E1;
@@
- E0 = hv_context.vp_index[E1]
+ E0 = hv_cpu_number_to_vp_number(E1)
//# pattern-7, witnesses: 3
@@
expression list listE0;
@@
- hv_tmp_cpu_nr_to_vp_nr(listE0)
+ hv_cpu_number_to_vp_number(listE0)
