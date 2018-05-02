//# pattern-1, witnesses: 5
@@
identifier s;
@@
 struct shash_alg s = {
 };
//# pattern-2, witnesses: 2
@@
@@
- type = CRYPTO_ALG_ASYNC;
- if (alg->cra_flags & CRYPTO_ALG_INTERNAL) {
- type |= CRYPTO_ALG_INTERNAL;
- }
- inst->alg.halg.base.cra_flags = type;
+ inst->alg.halg.base.cra_flags = CRYPTO_ALG_ASYNC | alg->cra_flags & CRYPTO_ALG_INTERNAL | CRYPTO_ALG_OPTIONAL_KEY;
