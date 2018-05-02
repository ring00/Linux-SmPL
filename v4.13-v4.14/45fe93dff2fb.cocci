//# pattern-1, witnesses: 5
@@
@@
- crypto_xor(keystream, src, nbytes);
- memcpy(dst, keystream, nbytes);
+ crypto_xor_cpy(dst, keystream, src, nbytes);
//# pattern-3, witnesses: 2
@@
expression V0;
@@
- memcpy(iv, V0, bsize);
- crypto_xor(iv, src, bsize);
+ crypto_xor_cpy(iv, V0, src, bsize);
//# pattern-5, witnesses: 2
@@
expression V0;
expression V1;
@@
- memcpy(iv, V0, bsize);
- crypto_xor(iv, V1, bsize);
+ crypto_xor_cpy(iv, V1, V0, bsize);
