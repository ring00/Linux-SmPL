//# pattern-20, witnesses: 5
@@
@@
- struct st33zp24_platform_data * pin_infos = chip->vendor.priv->dev.platform_data;
- if (pin_infos != NULL) {
- }
+ if (chip) {
+ }
//# pattern-1, witnesses: 3
@@
identifier chip;
identifier fn;
@@
 void fn(struct tpm_chip * chip)
 {
     <...
- struct i2c_client * client = client;
- client = chip->vendor.priv;
- (client);
+ struct tpm_stm_dev * tpm_dev = tpm_dev;
+ tpm_dev = chip->vendor.priv;
+ (tpm_dev);
     ...>
 }
//# pattern-2, witnesses: 3
@@
@@
- client = chip->vendor.priv
+ tpm_dev = chip->vendor.priv
//# pattern-18, witnesses: 2
@@
expression E1;
expression E2;
expression IL0;
@@
- I2C_WRITE_DATA(client, IL0, E1, E2)
+ I2C_WRITE_DATA(tpm_dev, IL0, E1, E2)
