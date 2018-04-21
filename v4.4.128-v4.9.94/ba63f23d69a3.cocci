//# pattern-6, witnesses: 3
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
expression IL1;
identifier inode;
identifier policy;
@@
- int fscrypt_process_policy(struct inode * inode, const struct fscrypt_policy * policy)
+ int fscrypt_process_policy(struct file * filp, const struct fscrypt_policy * policy)
 {
     <...
- if (!E0) {
- return -IL1;
- }
     ...>
 }
