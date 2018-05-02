//# pattern-6, witnesses: 2
@@
identifier s;
@@
 struct request * s = {
 };
//# pattern-7, witnesses: 2
@@
expression ME0;
identifier dev;
identifier fn;
@@
 int fn(struct nvme_dev * dev)
 {
     <...
- ME0.cmd_size = sizeof(unsigned long)
+ ME0.cmd_size = nvme_cmd_size(dev)
     ...>
 }
