//# pattern-5, witnesses: 10
@@
expression E0;
@@
- E0.command_set
+ E0.class
//# pattern-6, witnesses: 9
@@
@@
- ATAPI_COMMAND_SET
+ ATA_DEV_ATAPI
//# pattern-4, witnesses: 2
@@
@@
- sas_get_ata_command_set(dev);
+ dev->sata_dev.class = sas_get_ata_command_set(dev);
