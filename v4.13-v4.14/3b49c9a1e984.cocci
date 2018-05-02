//# pattern-1, witnesses: 13
@@
identifier datasync;
identifier end;
identifier file;
identifier fn;
typedef loff_t;
identifier start;
@@
 int fn(struct file * file, loff_t start, loff_t end, int datasync)
 {
     <...
- filemap_write_and_wait_range(inode->i_mapping, start, end)
+ file_write_and_wait_range(file, start, end)
     ...>
 }
//# pattern-2, witnesses: 2
@@
identifier datasync;
identifier end;
identifier file;
identifier fn;
typedef loff_t;
identifier start;
@@
 int fn(struct file * file, loff_t start, loff_t end, int datasync)
 {
     <...
- filemap_write_and_wait_range(file->f_mapping, start, end)
+ file_write_and_wait_range(file, start, end)
     ...>
 }
