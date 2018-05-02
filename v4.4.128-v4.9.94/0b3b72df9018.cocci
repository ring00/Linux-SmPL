//# pattern-2, witnesses: 2
@@
expression E2;
expression IL1;
expression ME0;
@@
- media_devnode_create(ME0->mdev, intf_type, 0, IL1, E2, GFP_KERNEL)
+ media_devnode_create(ME0->mdev, intf_type, 0, IL1, E2)
