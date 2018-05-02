//# pattern-2, witnesses: 2
@@
@@
- dev_err(arizona->dev, "Failed to set HPDETL mode: %d\n", ret)
+ dev_err(arizona->dev, "Failed to set HPDET mode: %d\n", ret)
//# pattern-3, witnesses: 2
@@
@@
- ARIZONA_ACCDET_MODE_HPL
+ arizona->pdata.hpdet_channel
