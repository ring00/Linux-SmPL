//# pattern-1, witnesses: 10
@@
identifier s;
@@
- struct svc_version s = {
+ const struct svc_version s = {
 };
//# pattern-2, witnesses: 2
@@
identifier s;
@@
- struct svc_version *[5] s = {
+ const struct svc_version *[5] s = {
 };
