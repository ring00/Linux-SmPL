//# pattern-1, witnesses: 2
@@
expression EC0;
@@
- tcmu_netlink_event(EC0, udev->uio_info.name, udev->uio_info.uio_dev->minor, NO_RECONFIG)
+ tcmu_netlink_event(EC0, udev->uio_info.name, udev->uio_info.uio_dev->minor, 0, NULL)
//# pattern-4, witnesses: 2
@@
expression EC0;
@@
- tcmu_netlink_event(TCMU_CMD_RECONFIG_DEVICE, udev->uio_info.name, udev->uio_info.uio_dev->minor, EC0)
+ tcmu_netlink_event(TCMU_CMD_RECONFIG_DEVICE, udev->uio_info.name, udev->uio_info.uio_dev->minor, EC0, &val)
