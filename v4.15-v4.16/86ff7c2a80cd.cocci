//# pattern-7, witnesses: 3
@@
@@
- BLK_STS_RESOURCE
+ BLK_STS_DEV_RESOURCE
//# pattern-10, witnesses: 2
@@
statement S0;
@@
- if (ret == BLK_STS_RESOURCE) { S0 }
+ if (ret == BLK_STS_RESOURCE || ret == BLK_STS_DEV_RESOURCE) { S0 }
