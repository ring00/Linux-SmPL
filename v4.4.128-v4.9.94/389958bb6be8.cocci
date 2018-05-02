//# pattern-3, witnesses: 2
@@
@@
- if (chip->pdata) {
- retries = max(chip->i2c_retry_count + 1, 1);
- }
+ retries = chip->i2c_retry_count;
