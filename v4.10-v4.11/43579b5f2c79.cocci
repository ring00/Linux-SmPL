//# pattern-5, witnesses: 2
@@
identifier buf;
identifier file;
identifier ib_dev;
identifier in_len;
identifier out_len;
identifier r0.fn;
@@
 ssize_t fn(struct ib_uverbs_file * file, struct ib_device * ib_dev, const char * buf, int in_len, int out_len)
 {
     <...
+ ret = ib_rdmacg_try_charge(&uobj->cg_obj, ib_dev, RDMACG_RESOURCE_HCA_OBJECT);
+ if (ret) {
+ }
     ...>
 }
