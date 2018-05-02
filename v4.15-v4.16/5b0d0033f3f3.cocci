//# pattern-1, witnesses: 2
@@
expression EC0;
identifier data;
identifier fn;
@@
 void fn(struct mms114_data * data)
 {
     <...
- if (data->pdata->cfg_pin) {
- data->pdata->cfg_pin(EC0);
- }
     ...>
 }
//# pattern-7, witnesses: 2
@@
expression ME0;
identifier data;
@@
 int mms114_setup_regs(struct mms114_data * data)
 {
     <...
- const struct mms114_platform_data * pdata = data->pdata;
- if (ME0) {
- }
+ const struct touchscreen_properties * props = &data->props;
+ if (ME0) {
+ }
     ...>
 }
//# pattern-10, witnesses: 2
@@
@@
- pdata->x_size
+ props->max_x
