//# pattern-11, witnesses: 3
@r0@
identifier i, fn;
@@
struct drm_info_list i = {
    .show = fn,
};
@@
identifier data;
identifier m;
identifier r0.fn;
@@
 int fn(struct seq_file * m, void * data)
 {
     <...
- seq_printf(m, "Total %d objects, %zu bytes, %zu GTT size\n", count, total_obj_size, total_gtt_size)
+ seq_printf(m, "Total %d objects, %llu bytes, %llu GTT size\n", count, total_obj_size, total_gtt_size)
     ...>
 }
