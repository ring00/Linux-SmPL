//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier clk;
identifier data;
identifier fops;
identifier mode;
identifier name;
typedef umode_t;
@@
- struct dentry * clk_debugfs_add_file(struct clk * clk, char * name, umode_t mode, void * data, const struct file_operations * fops)
+ struct dentry * clk_debugfs_add_file(struct clk_hw * hw, char * name, umode_t mode, void * data, const struct file_operations * fops)
 {
     <...
- clk->dentry
+ hw->clk->dentry
     ...>
 }
