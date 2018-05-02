//# pattern-3, witnesses: 3
@r0@
identifier i, fn;
@@
struct dbs_governor i = {
    .init = fn,
};
@@
expression E0;
identifier dbs_data;
identifier r0.fn;
@@
 int fn(struct dbs_data * dbs_data)
 {
     <...
- dbs_data->min_sampling_rate = E0;
     ...>
 }
//# pattern-4, witnesses: 2
@@
identifier s;
@@
- struct attribute *[8] s = {
+ struct attribute *[7] s = {
-    . = &min_sampling_rate.attr,
 };
