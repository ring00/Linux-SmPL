//# pattern-7, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier chip;
@@
- int pwmchip_add(struct pwm_chip * chip)
+ int pwmchip_add(struct pwm_chip * chip)
 {
     <...
- int ret = ret;
- ret = alloc_pwms(chip->base, chip->npwm);
- if (E0) {
- }
- ret = 0;
     ...>
 }
