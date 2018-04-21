//# pattern-2, witnesses: 2
@@
expression IL0;
typedef bool;
identifier buf;
identifier compat;
identifier len;
identifier opcode;
identifier req;
@@
 ssize_t aio_run_iocb(struct kiocb * req, unsigned int opcode, char * buf, size_t len, bool compat)
 {
     <...
- ret = file->f_op->aio_fsync(req, IL0);
     ...>
 }
