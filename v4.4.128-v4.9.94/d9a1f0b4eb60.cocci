//# pattern-3, witnesses: 8
@r0@
identifier i, fn;
@@
struct ttm_bo_driver i = {
    .verify_access = fn,
};
@@
expression ME0;
identifier bo;
identifier filp;
identifier r0.fn;
@@
 int fn(struct ttm_buffer_object * bo, struct file * filp)
 {
     <...
- drm_vma_node_verify_access(&ME0.vma_node, filp)
+ drm_vma_node_verify_access(&ME0.vma_node, filp->private_data)
     ...>
 }
//# pattern-1, witnesses: 3
@@
@@
- file_priv->filp
+ file_priv
//# pattern-4, witnesses: 3
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier filp;
identifier node;
identifier r1.fn;
@@
- int fn(struct drm_vma_offset_node * node, struct file * filp)
+ int fn(struct drm_vma_offset_node * node, struct drm_file * tag)
 {
     <...
- filp > entry->vm_filp
+ tag > entry->vm_tag
     ...>
 }
//# pattern-5, witnesses: 3
@r2@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier node;
identifier r2.fn;
identifier tag;
@@
 int fn(struct drm_vma_offset_node * node, struct drm_file * tag)
 {
     <...
- filp == entry->vm_filp
+ tag == entry->vm_tag
     ...>
 }
