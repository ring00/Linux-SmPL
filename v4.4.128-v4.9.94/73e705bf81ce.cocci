//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct regulator_ops i = {
    .set_voltage = fn,
};
@@
expression E0;
identifier rdev;
identifier req_max_uV;
identifier req_min_uV;
identifier selector;
@@
 int pwm_regulator_set_voltage(struct regulator_dev * rdev, int req_min_uV, int req_max_uV, unsigned int * selector)
 {
     <...
- unsigned int ramp_delay = rdev->constraints->ramp_delay;
- E0;
     ...>
 }
