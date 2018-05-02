//# pattern-2, witnesses: 2
@@
statement S0;
@@
- if (mdev->link_notify) { S0 }
+ if (mdev->ops && mdev->ops->link_notify) { S0 }
//# pattern-3, witnesses: 2
@@
@@
- mdev->link_notify
+ mdev->ops->link_notify
