//# pattern-1, witnesses: 3
@@
expression E1;
expression E2;
expression V0;
@@
- btt_map_read(arena, premap, &V0, E1, E2)
+ btt_map_read(arena, premap, &V0, E1, E2, NVDIMM_IO_ATOMIC)
//# pattern-2, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
@@
- arena_write_bytes(arena, E0, E1, E2)
+ arena_write_bytes(arena, E0, E1, E2, 0)
//# pattern-6, witnesses: 2
@@
expression E0;
expression E1;
@@
- btt_map_write(arena, E0, E1, 0, 0)
+ btt_map_write(arena, E0, E1, 0, 0, 0)
//# pattern-7, witnesses: 2
@@
expression E1;
expression E2;
expression V0;
@@
- arena_read_bytes(arena, V0, mem + E1, E2)
+ arena_read_bytes(arena, V0, mem + E1, E2, NVDIMM_IO_ATOMIC)
//# pattern-8, witnesses: 2
@@
expression E1;
expression E2;
expression V0;
@@
- arena_write_bytes(arena, V0, mem + E1, E2)
+ arena_write_bytes(arena, V0, mem + E1, E2, NVDIMM_IO_ATOMIC)
//# pattern-10, witnesses: 2
@@
expression E0;
expression E2;
identifier PV1;
@@
- arena_read_bytes(arena, E0, PV1, E2)
+ arena_read_bytes(arena, E0, PV1, E2, 0)
//# pattern-13, witnesses: 2
@@
expression IL0;
expression V1;
identifier arena;
@@
 int btt_log_init(struct arena_info * arena)
 {
     <...
- __btt_log_write(arena, i, IL0, &V1)
+ __btt_log_write(arena, i, IL0, &V1, 0)
     ...>
 }
//# pattern-15, witnesses: 2
@@
expression E0;
@@
- nvdimm_read_bytes(ndns, SZ_4K, E0, sizeof(unsigned long))
+ nvdimm_read_bytes(ndns, SZ_4K, E0, sizeof(unsigned long), 0)
