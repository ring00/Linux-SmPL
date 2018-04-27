//# pattern-6, witnesses: 2
@@
expression E0;
@@
- crypto_alloc_hash(E0, 0, CRYPTO_ALG_ASYNC)
+ crypto_alloc_shash(E0, 0, 0)
