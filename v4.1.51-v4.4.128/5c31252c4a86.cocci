//# pattern-1, witnesses: 23
@@
expression E0;
@@
- test_bit(PWMF_ENABLED, &E0->flags)
+ pwm_is_enabled(E0)
