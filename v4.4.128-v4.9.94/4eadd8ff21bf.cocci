//# pattern-2, witnesses: 3
@@
@@
- ibp->rvp.smi_ah
+ ibp->smi_ah
//# pattern-1, witnesses: 2
@@
identifier dd;
@@
 void qib_setup_7322_cleanup(struct qib_devdata * dd)
 {
     <...
- dd->pport[i].ibport_data.rvp
+ dd->pport[i].ibport_data
     ...>
 }
