//# pattern-3, witnesses: 2
@@
@@
- release_mem_region(res->start, PLAT_RESOURCE_IPC_SIZE)
+ release_mem_region(res->start, PLAT_RESOURCE_IPC_SIZE + PLAT_RESOURCE_GCR_SIZE)
