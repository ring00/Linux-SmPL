//# pattern-2, witnesses: 2
@@
@@
- NVME_CMB_SQS(dev->cmbsz)
+ (dev->cmbsz & NVME_CMBSZ_SQS)
