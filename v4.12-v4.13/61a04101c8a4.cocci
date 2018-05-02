//# pattern-1, witnesses: 2
@@
identifier PV0;
identifier PV1;
@@
- struct st_nci_nfc_platform_data * pdata = pdata;
- pdata = PV0->dev.platform_data;
- if (!pdata && PV1->dev.of_node) {
- }
+ if (PV1->dev.of_node) {
+ }
