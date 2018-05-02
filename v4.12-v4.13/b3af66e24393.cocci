//# pattern-1, witnesses: 5
@@
expression E1;
expression E2;
expression EC0;
@@
- tcmu_netlink_event(EC0, udev->uio_info.name, udev->uio_info.uio_dev->minor, E1, E2)
+ tcmu_netlink_event(udev, EC0, E1, E2)
