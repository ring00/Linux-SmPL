//# pattern-1, witnesses: 11
@@
@@
- &dev->bar->csts
+ dev->bar + NVME_REG_CSTS
//# pattern-2, witnesses: 4
@@
@@
- &dev->bar->cap
+ dev->bar + NVME_REG_CAP
//# pattern-8, witnesses: 3
@@
@@
- &dev->bar->cc
+ dev->bar + NVME_REG_CC
//# pattern-10, witnesses: 3
@@
@@
- &dev->bar->vs
+ dev->bar + NVME_REG_VS
