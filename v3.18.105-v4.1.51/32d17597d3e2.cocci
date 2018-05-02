//# pattern-1, witnesses: 5
@@
expression E0;
@@
- vsp1->pdata->features & E0
+ vsp1->pdata.features & E0
//# pattern-2, witnesses: 3
@@
expression E0;
@@
- E0 < vsp1->pdata->wpf_count
+ E0 < vsp1->pdata.wpf_count
//# pattern-3, witnesses: 2
@@
expression E0;
identifier fn;
identifier vsp1;
@@
 int fn(struct vsp1_device * vsp1)
 {
     <...
- E0 < vsp1->pdata->uds_count
+ E0 < vsp1->pdata.uds_count
     ...>
 }
//# pattern-4, witnesses: 2
@@
expression E0;
identifier fn;
identifier vsp1;
@@
 int fn(struct vsp1_device * vsp1)
 {
     <...
- E0 < vsp1->pdata->rpf_count
+ E0 < vsp1->pdata.rpf_count
     ...>
 }
