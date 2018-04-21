//# pattern-9, witnesses: 5
@r0@
identifier i, fn;
@@
struct file_operations i = {
    .write = fn,
};
@@
expression E0;
identifier buf;
identifier count;
identifier file;
identifier ppos;
identifier r0.fn;
@@
 ssize_t fn(struct file * file, const char * buf, size_t count, loff_t * ppos)
 {
     <...
- kzalloc(count + 1, E0)
+ memdup_user_nul(buf, count)
     ...>
 }
//# pattern-12, witnesses: 3
@@
@@
- if (data == NULL) {
- return -ENOMEM;
- }
- if (copy_from_user(data, buf, count) != 0) {
- rc = -EFAULT;
- }
+ if (IS_ERR(data)) {
+ return PTR_ERR(data);
+ }
//# pattern-3, witnesses: 2
@r1@
identifier i, fn;
@@
struct file_operations i = {
    .write = fn,
};
@@
identifier buf;
identifier count;
identifier file;
identifier ppos;
identifier r1.fn;
@@
 ssize_t fn(struct file * file, const char * buf, size_t count, loff_t * ppos)
 {
     <...
- data = kzalloc(count + 1, GFP_KERNEL);
- if (data == NULL) {
- return -ENOMEM;
- }
- if (copy_from_user(data, buf, count) != 0) {
- rc = -EFAULT;
- }
- data[count] = ;
+ data = memdup_user_nul(buf, count);
+ if (IS_ERR(data)) {
+ return PTR_ERR(data);
+ }
     ...>
 }
//# pattern-5, witnesses: 2
@@
identifier fn;
identifier optlen;
identifier optval;
identifier rx;
@@
 int fn(struct rxrpc_sock * rx, char * optval, int optlen)
 {
     <...
- description = kmalloc(optlen + 1, GFP_KERNEL);
- if (!description) {
- return -ENOMEM;
- }
- if (copy_from_user(description, optval, optlen)) {
- kfree(description);
- return -EFAULT;
- }
- description[optlen] = 0;
+ description = memdup_user_nul(optval, optlen);
+ if (IS_ERR(description)) {
+ return PTR_ERR(description);
+ }
     ...>
 }
//# pattern-7, witnesses: 2
@r2@
identifier i, fn;
@@
struct file_operations i = {
    .write = fn,
};
@@
expression E4;
expression V0;
expression V1;
expression V2;
expression V3;
identifier _pos;
identifier buf;
identifier file;
identifier r2.fn;
identifier size;
@@
 ssize_t fn(struct file * file, const char * buf, size_t size, loff_t * _pos)
 {
     <...
- V0 = kmalloc(size + 1, GFP_KERNEL);
- if (!V1) {
- return -ENOMEM;
- }
- ret = -EFAULT;
- if (copy_from_user(V2, buf, size) != 0) {
- }
- V3[size] = E4;
+ V0 = memdup_user_nul(buf, size);
+ if (IS_ERR(V1)) {
+ return PTR_ERR(V2);
+ }
     ...>
 }
