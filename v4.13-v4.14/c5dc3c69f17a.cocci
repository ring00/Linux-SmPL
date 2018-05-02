//# pattern-2, witnesses: 3
@@
expression E1;
expression F3;
type T0;
expression V2;
@@
- T0  = E1;
- device_for_each_child(&dev->dev, &V2, F3);
//# pattern-1, witnesses: 2
@@
@@
- pci_ers_result_t status = PCI_ERS_RESULT_RECOVERED;
- return status;
+ return PCI_ERS_RESULT_RECOVERED;
