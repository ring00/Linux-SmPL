//# pattern-6, witnesses: 2
@@
expression S0;
@@
- dev_err(&ctrl->dev, S0, PMIC_ARB_MAX_TRANS_BYTES, len)
+ dev_err(&ctrl->dev, "pmic-arb supports 1..%d bytes per trans, but:%zu requested", PMIC_ARB_MAX_TRANS_BYTES, len)
