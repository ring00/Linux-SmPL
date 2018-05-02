//# pattern-20, witnesses: 26
@@
expression ME0;
@@
- &ME0.psy
+ ME0.psy
//# pattern-68, witnesses: 18
@@
expression E0;
@@
- E0->battery
+ E0->battery_desc
//# pattern-9, witnesses: 14
@@
@@
- di = const typeof (((struct ab8500_fg *)0)->fg_psy) * __mptr = (psy);
- __mptr - ;
//# pattern-4, witnesses: 8
@@
expression E0;
@@
- E0->bat
+ E0->bat_desc
//# pattern-6, witnesses: 6
@@
expression E0;
@@
- charger->psy.type == E0
+ charger->psy->desc->type == E0
//# pattern-16, witnesses: 6
@@
@@
- &di->fg_psy
+ di->fg_psy
//# pattern-5, witnesses: 5
@@
identifier fn;
identifier prop;
identifier psy;
identifier s;
identifier val;
@@
  <unknown type> s = {
 };
int fn(struct power_supply * psy, enum power_supply_property prop, union power_supply_propval * val)
 {
     <...
 <unknown type> s = {
 };
     ...>
 }
//# pattern-11, witnesses: 3
@@
expression ME0;
@@
- &ME0.psy.dev->kobj
+ &ME0.psy->dev.kobj
//# pattern-27, witnesses: 3
@@
@@
- battery->bat.dev
+ battery->bat
//# pattern-39, witnesses: 3
@@
expression E0;
@@
- &E0->battery
+ E0->battery
//# pattern-50, witnesses: 3
@@
@@
- &info->usb
+ info->usb
//# pattern-64, witnesses: 3
@@
@@
- ext->type
+ ext->desc->type
//# pattern-21, witnesses: 2
@@
@@
- psy->dev->parent
+ psy->dev.parent
//# pattern-30, witnesses: 2
@@
identifier di;
identifier fn;
@@
 void fn(struct ab8500_fg * di)
 {
     <...
- di->fg_psy.dev
+ &di->fg_psy->dev
     ...>
 }
//# pattern-34, witnesses: 2
@@
expression V0;
@@
- V0 = container_of(psy, );
//# pattern-47, witnesses: 2
@@
expression ME0;
@@
- &ME0.dev->kobj
+ &ME0->dev.kobj
//# pattern-55, witnesses: 2
@@
@@
- &ac->charger.dev->kobj
+ &ac->charger->dev.kobj
//# pattern-67, witnesses: 2
@@
identifier di;
@@
 int ab8500_fg_sysfs_psy_create_attrs(struct ab8500_fg * di)
 {
     <...
- di->fg_psy.dev
+ &di->fg_psy->dev
     ...>
 }
//# pattern-89, witnesses: 2
@@
expression E0;
expression F2;
expression ME1;
expression ME3;
@@
- if (E0 && ME1.dev) {
- F2(&ME3);
- }
+ if (E0 && ME3) {
+ F2(ME1);
+ }
