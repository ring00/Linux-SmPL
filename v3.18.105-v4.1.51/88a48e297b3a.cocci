//# pattern-4, witnesses: 2
@@
expression E0;
expression V1;
expression V2;
expression V3;
identifier data;
identifier dev;
identifier file_priv;
identifier fn;
@@
 int fn(struct drm_device * dev, void * data, struct drm_file * file_priv)
 {
     <...
- get_properties(E0, V1->props_ptr, V2->prop_values_ptr, &V3->count_props)
+ get_properties(E0, file_priv->atomic, V1->props_ptr, V2->prop_values_ptr, &V3->count_props)
     ...>
 }
