//# pattern-7, witnesses: 4
@@
@@
- dev_priv->mm.stolen_base
+ dev_priv->dsm.start
//# pattern-1, witnesses: 3
@@
@@
- struct i915_ggtt * ggtt = &dev_priv->ggtt;
//# pattern-10, witnesses: 3
@@
expression E0;
@@
- ggtt->stolen_size - E0
+ resource_size(&dev_priv->dsm) - E0
//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
@@
- I915_WRITE(E0, dev_priv->mm.stolen_base + E1->start)
+ I915_WRITE(E0, dev_priv->dsm.start + E1->start)
//# pattern-5, witnesses: 2
@@
identifier fn;
identifier ggtt;
@@
 int fn(struct i915_ggtt * ggtt)
 {
     <...
- ggtt->stolen_size = resource_size(&intel_graphics_stolen_res);
     ...>
 }
