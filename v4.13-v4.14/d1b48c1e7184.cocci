//# pattern-10, witnesses: 4
@@
identifier eb;
@@
 int eb_lookup_vmas(struct i915_execbuffer * eb)
 {
     <...
- struct i915_gem_context_vma_lut * lut = &eb->ctx->vma_lut;
+ struct radix_tree_root * handles_vma = &eb->ctx->handles_vma;
     ...>
 }
