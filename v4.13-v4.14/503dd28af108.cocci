//# pattern-5, witnesses: 3
@@
expression E0;
@@
- E0->torch_intensity
+ E0->intensity
//# pattern-9, witnesses: 3
@@
expression E0;
expression E2;
expression V1;
expression V3;
@@
- v4l2_flash_init(dev, E0, V1, E2, &v4l2_flash_ops, &V3)
+ v4l2_flash_init(dev, E0, V1, &v4l2_flash_ops, &V3)
