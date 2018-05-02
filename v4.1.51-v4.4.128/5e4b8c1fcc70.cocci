//# pattern-4, witnesses: 4
@@
expression E0;
expression IL1;
@@
- E0 & IL1 | CRYPTO_ALG_AEAD_NEW
+ E0 & IL1
//# pattern-8, witnesses: 3
@@
expression E0;
@@
- inst->alg.base.cra_flags |= E0;
//# pattern-1, witnesses: 2
@@
expression E0;
@@
- E0 ^ CRYPTO_ALG_TYPE_AEAD | CRYPTO_ALG_AEAD_NEW
+ E0 ^ CRYPTO_ALG_TYPE_AEAD
