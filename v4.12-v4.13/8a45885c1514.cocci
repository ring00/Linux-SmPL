//# pattern-1, witnesses: 2
@@
expression EC0;
@@
- tcmu_netlink_event(EC0, udev->uio_info.name, udev->uio_info.uio_dev->minor)
+ tcmu_netlink_event(EC0, udev->uio_info.name, udev->uio_info.uio_dev->minor, NO_RECONFIG)
