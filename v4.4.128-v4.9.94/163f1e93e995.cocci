//# pattern-26, witnesses: 4
@@
@@
- struct media_devnode * mdev = media_devnode_data(filp);
- if (!media_devnode_is_registered(mdev)) {
- }
+ struct media_devnode * devnode = media_devnode_data(filp);
+ if (!media_devnode_is_registered(devnode)) {
+ }
//# pattern-25, witnesses: 3
@@
expression ME0;
@@
- struct media_devnode * mdev = media_devnode_data(filp);
- if (!ME0) {
- }
+ struct media_devnode * devnode = media_devnode_data(filp);
+ if (!ME0) {
+ }
//# pattern-1, witnesses: 2
@@
expression ME0;
identifier arg;
identifier cmd;
identifier filp;
identifier fn;
@@
 long fn(struct file * filp, unsigned int cmd, unsigned long arg)
 {
     <...
- struct media_devnode * mdev = media_devnode_data(filp);
- return __media_ioctl(filp, cmd, arg, ME0);
+ struct media_devnode * devnode = media_devnode_data(filp);
+ return __media_ioctl(filp, cmd, arg, ME0);
     ...>
 }
//# pattern-24, witnesses: 2
@@
expression ME0;
@@
- struct media_devnode * mdev = media_devnode_data(filp);
- return ME0(filp, buf, sz, off);
+ struct media_devnode * devnode = media_devnode_data(filp);
+ return ME0(filp, buf, sz, off);
