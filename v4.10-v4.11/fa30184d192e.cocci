//# pattern-13, witnesses: 4
@@
expression ME0;
identifier opp_table;
@@
 void _remove_opp_table(struct opp_table * opp_table)
 {
     <...
- if (ME0) {
- return;
- }
     ...>
 }
//# pattern-4, witnesses: 3
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression ME0;
expression S1;
identifier dev;
identifier r0.fn;
@@
- void fn(struct device * dev)
+ void fn(struct opp_table * opp_table)
 {
     ...
- struct opp_table * opp_table = opp_table;
- mutex_lock(&opp_table_lock);
- opp_table = _find_opp_table(dev);
- if (IS_ERR(opp_table)) {
- dev_err(dev, "Failed to find opp_table: %ld\n", PTR_ERR(opp_table));
- }
- if (!ME0) {
- dev_err(dev, S1, );
- }
- _remove_opp_table(opp_table);
+ if (!ME0) {
+ pr_err();
+ return;
+ }
+ dev_pm_opp_put_opp_table(opp_table);
 }
