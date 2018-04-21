//# pattern-2, witnesses: 3
@@
expression EC0;
identifier fn;
identifier mode;
identifier sci;
@@
 int fn(struct nilfs_sc_info * sci, int mode)
 {
     <...
- sci->sc_stage.scnt = EC0;
+ nilfs_sc_cstage_set(sci, EC0);
     ...>
 }
//# pattern-6, witnesses: 2
@@
expression E0;
identifier mode;
identifier sci;
@@
 int nilfs_segctor_do_construct(struct nilfs_sc_info * sci, int mode)
 {
     <...
- sci->sc_stage.scnt == E0
+ nilfs_sc_cstage_get(sci) == E0
     ...>
 }
