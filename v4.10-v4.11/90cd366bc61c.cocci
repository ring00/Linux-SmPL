//# pattern-10, witnesses: 2
@@
@@
- if (fe->dvb->mdev && fe->dvb->mdev->disable_source) {
- }
+ if (fe->dvb->mdev) {
+ mutex_lock(&fe->dvb->mdev->graph_mutex);
+ if (fe->dvb->mdev->disable_source) {
+ }
+ mutex_unlock(&fe->dvb->mdev->graph_mutex);
+ }
