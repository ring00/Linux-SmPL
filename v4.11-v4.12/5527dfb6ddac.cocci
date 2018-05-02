//# pattern-1, witnesses: 3
@r0@
identifier i, fn;
@@
struct kpp_alg i = {
    .set_secret = fn,
};
@@
identifier buf;
identifier len;
identifier r0.fn;
identifier tfm;
@@
- int fn(struct crypto_kpp * tfm, void * buf, unsigned int len)
+ int fn(struct crypto_kpp * tfm, const void * buf, unsigned int len)
 { ... }
