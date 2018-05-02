//# pattern-5, witnesses: 10
@@
@@
- AMD_SCHED_PRIORITY_NORMAL
+ DRM_SCHED_PRIORITY_NORMAL
//# pattern-3, witnesses: 9
@@
expression list listE0;
@@
- amd_sched_entity_fini(listE0)
+ drm_sched_entity_fini(listE0)
//# pattern-1, witnesses: 7
@@
expression list listE0;
@@
- amd_sched_entity_init(listE0)
+ drm_sched_entity_init(listE0)
//# pattern-10, witnesses: 3
@@
@@
- AMD_SCHED_PRIORITY_INVALID
+ DRM_SCHED_PRIORITY_INVALID
//# pattern-14, witnesses: 3
@@
@@
- AMD_SCHED_PRIORITY_UNSET
+ DRM_SCHED_PRIORITY_UNSET
//# pattern-15, witnesses: 3
@@
expression list listE0;
@@
- to_amd_sched_fence(listE0)
+ to_drm_sched_fence(listE0)
//# pattern-2, witnesses: 2
@@
identifier fn;
identifier s_job;
@@
- struct dma_fence * fn(struct amd_sched_job * s_job)
+ struct dma_fence * fn(struct drm_sched_job * s_job)
 { ... }
//# pattern-11, witnesses: 2
@@
expression list listE0;
@@
- amd_sched_job_init(listE0)
+ drm_sched_job_init(listE0)
//# pattern-19, witnesses: 2
@@
expression list listE0;
@@
- amd_sched_entity_push_job(listE0)
+ drm_sched_entity_push_job(listE0)
//# pattern-25, witnesses: 2
@@
@@
- AMD_SCHED_PRIORITY_MAX
+ DRM_SCHED_PRIORITY_MAX
//# pattern-27, witnesses: 2
@@
@@
- AMD_SCHED_PRIORITY_KERNEL
+ DRM_SCHED_PRIORITY_KERNEL
//# pattern-29, witnesses: 2
@@
@@
- AMD_SCHED_PRIORITY_HIGH_HW
+ DRM_SCHED_PRIORITY_HIGH_HW
