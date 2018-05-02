//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
@@
- i915_gem_object_ggtt_pin(obj, E0, E1, E2)
+ i915_gem_object_ggtt_pin(obj, E0, 0, E1, E2)
//# pattern-2, witnesses: 2
@@
expression E0;
identifier engine;
identifier need_reloc;
identifier vma;
@@
 int i915_gem_execbuffer_reserve_vma(struct i915_vma * vma, struct intel_engine_cs * engine, bool * need_reloc)
 {
     <...
- i915_gem_object_pin(obj, vma->vm, entry->alignment, E0)
+ i915_gem_object_pin(obj, vma->vm, entry->pad_to_size, entry->alignment, E0)
     ...>
 }
