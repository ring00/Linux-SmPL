//# pattern-1, witnesses: 3
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
expression E1;
expression E2;
statement S3;
identifier fraglen;
identifier from;
identifier odd;
identifier offset;
identifier r0.fn;
identifier skb;
identifier to;
@@
 int fn(void * from, char * to, int offset, int fraglen, int odd, struct sk_buff * skb)
 {
     <...
- if (csum_and_copy_from_iter(E0, fraglen, &E1, &E2->msg_iter) != fraglen) { S3 }
+ if (!csum_and_copy_from_iter_full(E0, fraglen, &E1, &E2->msg_iter)) { S3 }
     ...>
 }
