//# pattern-1, witnesses: 6
@@
identifier PV0;
@@
- struct atmel_ssc_info * ssc_p = &ssc_info[PV0->id];
+ struct platform_device * pdev = to_platform_device(PV0->dev);
+ struct atmel_ssc_info * ssc_p = &ssc_info[pdev->id];
//# pattern-2, witnesses: 2
@@
identifier cpu_dai;
identifier fn;
@@
 int fn(struct snd_soc_dai * cpu_dai)
 {
     <...
- cpu_dai->id
+ pdev->id
     ...>
 }
