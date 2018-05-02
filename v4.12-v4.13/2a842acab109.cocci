//# pattern-22, witnesses: 10
@@
@@
- -EIO
+ BLK_STS_IOERR
//# pattern-5, witnesses: 4
@@
typedef blk_status_t;
identifier error;
identifier fn;
identifier rq;
@@
- void fn(struct request * rq, int error)
+ void fn(struct request * rq, blk_status_t error)
 { ... }
//# pattern-9, witnesses: 3
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression IL0;
typedef blk_status_t;
identifier q;
identifier rq;
@@
- int blk_insert_cloned_request(struct request_queue * q, struct request * rq)
+ blk_status_t blk_insert_cloned_request(struct request_queue * q, struct request * rq)
 {
     <...
- return -IL0;
+ return BLK_STS_IOERR;
     ...>
 }
//# pattern-1, witnesses: 2
@@
typedef blk_status_t;
identifier fn;
identifier rq;
identifier status;
@@
 void fn(struct request * rq, blk_status_t status)
 { ... }
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
typedef blk_status_t;
typedef bool;
identifier error;
identifier nr_bytes;
identifier r1.fn;
identifier rq;
@@
- bool fn(struct request * rq, int error, unsigned int nr_bytes)
+ bool fn(struct request * rq, blk_status_t error, unsigned int nr_bytes)
 { ... }
//# pattern-4, witnesses: 2
@@
@@
- -ENODEV
+ BLK_STS_IOERR
//# pattern-17, witnesses: 2
@r2@
identifier fn;
expression P1;
@@
llvm.expect.i64(fn, P1)
@@
identifier bidi_bytes;
typedef blk_status_t;
typedef bool;
identifier error;
identifier nr_bytes;
identifier r2.fn;
identifier rq;
@@
- bool fn(struct request * rq, int error, unsigned int nr_bytes, unsigned int bidi_bytes)
+ bool fn(struct request * rq, blk_status_t error, unsigned int nr_bytes, unsigned int bidi_bytes)
 { ... }
