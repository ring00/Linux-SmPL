//# pattern-5, witnesses: 3
@r0@
identifier i, fn;
@@
struct file_operations i = {
    .write = fn,
};
@@
expression V0;
identifier buffer;
identifier count;
identifier file;
identifier ppos;
identifier r0.fn;
@@
 ssize_t fn(struct file * file, const char * buffer, size_t count, loff_t * ppos)
 {
     <...
- char c = c;
- bool bv = bv;
- rc = get_user(c);
- rc = strtobool(&c, &bv);
- if (rc) {
- return rc;
- }
- V0 = bv;
+ rc = kstrtobool_from_user(buffer, count, &V0);
     ...>
 }
