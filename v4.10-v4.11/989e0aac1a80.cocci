//# pattern-2, witnesses: 4
@r0@
identifier i, fn;
@@
struct ata_port_operations i = {
    .sff_data_xfer = fn,
};
@@
identifier buf;
identifier buflen;
identifier dev;
identifier r0.fn;
identifier rw;
@@
- unsigned int fn(struct ata_device * dev, unsigned char * buf, unsigned int buflen, int rw)
+ unsigned int fn(struct ata_queued_cmd * qc, unsigned char * buf, unsigned int buflen, int rw)
 {
     <...
- dev->link
+ qc->dev->link
     ...>
 }
//# pattern-4, witnesses: 3
@@
@@
- qc->dev
+ qc
//# pattern-7, witnesses: 2
@r1@
identifier fn;
expression P1;
@@
llvm.expect.i64(fn, P1)
@@
identifier bytes;
identifier qc;
@@
 int __atapi_pio_bytes(struct ata_queued_cmd * qc, unsigned int bytes)
 {
     <...
- ap->ops->sff_data_xfer(dev, buf + offset, count, rw)
+ ap->ops->sff_data_xfer(qc, buf + offset, count, rw)
     ...>
 }
