//# pattern-2, witnesses: 2
@@
@@
- ipvs->master_mcast_ifn
+ ipvs->mcfg.mcast_ifn
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- ipvs->backup_syncid != E0
+ ipvs->bcfg.syncid != E0
