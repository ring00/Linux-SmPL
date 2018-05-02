//# pattern-3, witnesses: 10
@@
expression EC0;
expression ME1;
@@
- clear_bit(EC0, &ME1);
//# pattern-9, witnesses: 2
@@
identifier sas_ha;
@@
 int sas_register_phys(struct sas_ha_struct * sas_ha)
 {
     <...
- const work_func_t [5]  = ;
     ...>
 }
