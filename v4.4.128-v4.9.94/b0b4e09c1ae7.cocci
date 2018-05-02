//# pattern-6, witnesses: 5
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier disk_name;
identifier ops;
identifier q;
@@
- int nvm_register(struct request_queue * q, char * disk_name, struct nvm_dev_ops * ops)
+ int nvm_register(struct nvm_dev * dev)
 {
     <...
- struct nvm_dev * dev = dev;
- dev = kzalloc(sizeof(unsigned long), GFP_KERNEL);
     ...>
 }
