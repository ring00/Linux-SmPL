//# pattern-4, witnesses: 3
@@
identifier name;
identifier parent;
@@
 struct dentry * tracefs_create_dir(const char * name, struct dentry * parent)
 {
     <...
- struct dentry * dentry = start_creating(name, parent);
     ...>
 }
//# pattern-6, witnesses: 3
@@
expression E0;
@@
- struct inode * inode = inode;
- inode = tracefs_get_inode(dentry->d_sb);
- E0;
//# pattern-5, witnesses: 2
@@
identifier name;
identifier parent;
@@
 struct dentry * tracefs_create_dir(const char * name, struct dentry * parent)
 {
     <...
- struct dentry * dentry = start_creating(name, parent);
- struct inode * inode = inode;
- inode = tracefs_get_inode(dentry->d_sb);
     ...>
 }
