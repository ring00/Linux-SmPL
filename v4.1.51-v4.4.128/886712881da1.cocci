//# pattern-1, witnesses: 2
@@
expression E0;
identifier domain;
identifier rbo;
typedef u32;
@@
 void amdgpu_ttm_placement_from_domain(struct amdgpu_bo * rbo, u32 domain)
 {
     <...
- if (rbo->flags & AMDGPU_GEM_CREATE_CPU_GTT_UC) {
- rbo->placements[c].fpfn = 0;
- rbo->placements[_ ++c].flags = TTM_PL_FLAG_UNCACHED | E0;
- }
+ if (rbo->flags & AMDGPU_GEM_CREATE_CPU_GTT_USWC) {
+ }
     ...>
 }
