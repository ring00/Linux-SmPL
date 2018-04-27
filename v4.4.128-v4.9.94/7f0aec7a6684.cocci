//# pattern-1, witnesses: 2
@@
identifier PV0;
@@
- PV0->multicast_router = 1
+ PV0->multicast_router = MDB_RTR_TYPE_TEMP_QUERY
//# pattern-3, witnesses: 2
@@
@@
- port->multicast_router != 1
+ port->multicast_router != MDB_RTR_TYPE_TEMP_QUERY
