//# pattern-23, witnesses: 10
@@
expression E0;
@@
- E0->rbuf
+ E0->buf
//# pattern-56, witnesses: 4
@@
@@
- ir->mutex
+ d->mutex
//# pattern-14, witnesses: 2
@@
@@
- struct irctl * ir = file->private_data;
+ struct lirc_dev * d = file->private_data;
//# pattern-15, witnesses: 2
@@
@@
- struct irctl * ir = file->private_data;
- if (!ir->attached) {
- }
+ struct lirc_dev * d = file->private_data;
+ if (!d->attached) {
+ }
//# pattern-16, witnesses: 2
@@
expression E1;
expression S0;
@@
- struct irctl * ir = file->private_data;
- dev_dbg(ir->d.dev, , ir->d.name, ir->d.minor);
+ struct lirc_dev * d = file->private_data;
+ dev_dbg(&d->dev, S0, d->name, d->minor, E1);
//# pattern-29, witnesses: 2
@r0@
identifier i, fn;
@@
struct file_operations i = {
    .read = fn,
};
@@
expression F0;
identifier buffer;
identifier file;
identifier length;
identifier ppos;
@@
 ssize_t lirc_dev_fop_read(struct file * file, char * buffer, size_t length, loff_t * ppos)
 {
     <...
- struct irctl * ir = file->private_data;
- F0(&ir->buf->wait_poll, &wait);
+ struct lirc_dev * d = file->private_data;
+ F0(&d->buf->wait_poll, &wait);
     ...>
 }
//# pattern-57, witnesses: 2
@@
@@
- ir->buf
+ d->buf
