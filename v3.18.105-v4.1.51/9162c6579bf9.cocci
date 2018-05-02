//# pattern-1, witnesses: 3
@@
statement S0;
@@
- if (dev->class != ATA_DEV_ATA) { S0 }
+ if (dev->class != ATA_DEV_ATA && dev->class != ATA_DEV_ZAC) { S0 }
//# pattern-3, witnesses: 2
@@
statement S0;
@@
- if (dev->class == ATA_DEV_ATA) { S0 }
+ if (dev->class == ATA_DEV_ATA || dev->class == ATA_DEV_ZAC) { S0 }
//# pattern-8, witnesses: 2
@@
@@
- class == ATA_DEV_ATA
+ class == ATA_DEV_ATA || class == ATA_DEV_ZAC
