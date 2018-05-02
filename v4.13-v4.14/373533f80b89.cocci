//# pattern-1, witnesses: 3
@@
expression V0;
identifier fn;
identifier man;
identifier prefix;
@@
- void fn(struct ttm_mem_type_manager * man, const char * prefix)
+ void fn(struct ttm_mem_type_manager * man, struct drm_printer * printer)
 {
     <...
- struct drm_printer p = drm_debug_printer(prefix);
- drm_mm_print(&V0->mm, &p);
+ drm_mm_print(&V0->mm, printer);
     ...>
 }
//# pattern-3, witnesses: 3
@r2@
identifier i, fn;
@@
struct ttm_mem_type_manager_func i = {
    .debug = fn,
};
@@
identifier man;
identifier printer;
identifier r2.fn;
@@
 void fn(struct ttm_mem_type_manager * man, struct drm_printer * printer)
 { ... }
