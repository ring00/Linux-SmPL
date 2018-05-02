//# pattern-6, witnesses: 2
@@
identifier pdata;
identifier pdesc;
identifier pdev;
@@
 int aspeed_pinctrl_probe(struct platform_device * pdev, struct pinctrl_desc * pdesc, struct aspeed_pinctrl_data * pdata)
 {
     <...
- pdata->map
+ pdata->maps[ASPEED_IP_SCU]
     ...>
 }
