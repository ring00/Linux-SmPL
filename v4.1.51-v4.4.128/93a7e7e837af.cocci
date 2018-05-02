//# pattern-1, witnesses: 2
@@
identifier PV0;
@@
- struct net_vrf_dev * vrf_ptr = rtnl_dereference(PV0->vrf_ptr);
//# pattern-2, witnesses: 2
@@
identifier PV0;
@@
- RCU_INIT_POINTER(PV0->vrf_ptr, NULL);
