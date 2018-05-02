//# pattern-8, witnesses: 4
@@
expression E0;
expression S1;
@@
- WARN_ONCE(E0, S1);
//# pattern-2, witnesses: 2
@@
expression EC0;
@@
- i915_gem_create(file, dev, args->size, EC0, &args->handle)
+ i915_gem_create(file, dev, args->size, &args->handle)
//# pattern-7, witnesses: 2
@@
expression E0;
@@
- E0->dumb = true;
