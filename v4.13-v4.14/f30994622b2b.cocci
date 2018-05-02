//# pattern-2, witnesses: 2
@@
@@
- vc4->bo_stats
+ vc4->bo_labels[VC4_BO_TYPE_KERNEL]
//# pattern-5, witnesses: 2
@@
expression E0;
identifier bo;
@@
 void vc4_bo_remove_from_cache(struct vc4_bo * bo)
 {
     <...
- struct drm_gem_object * obj = &bo->base.base;
- struct vc4_dev * vc4 = to_vc4_dev(obj->dev);
- E0;
     ...>
 }
