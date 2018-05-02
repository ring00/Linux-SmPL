//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct power_supply_desc i = {
    .set_property = fn,
};
@@
identifier prop;
identifier ps;
identifier val;
@@
 int fuel_gauge_set_property(struct power_supply * ps, enum power_supply_property prop, const union power_supply_propval * val)
 {
     <...
- ret = fuel_gauge_set_low_btemp_alert(info);
     ...>
 }
//# pattern-4, witnesses: 2
@r1@
identifier i, fn;
@@
struct power_supply_desc i = {
    .set_property = fn,
};
@@
expression ME0;
identifier prop;
identifier ps;
identifier val;
@@
 int fuel_gauge_set_property(struct power_supply * ps, enum power_supply_property prop, const union power_supply_propval * val)
 {
     <...
- ME0 = UNPROP_TEMP(val->intval);
     ...>
 }
//# pattern-7, witnesses: 2
@@
identifier info;
@@
 void fuel_gauge_init_hw_regs(struct axp288_fg_info * info)
 {
     <...
- int ret = ret;
- ret = fuel_gauge_set_high_btemp_alert(info);
     ...>
 }
