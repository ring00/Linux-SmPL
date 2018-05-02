//# pattern-2, witnesses: 2
@@
expression E0;
@@
- E0->crypt_one_request
+ E0->cipher_one_request
//# pattern-3, witnesses: 2
@@
expression list listE0;
@@
- crypto_finalize_request(listE0)
+ crypto_finalize_cipher_request(listE0)
//# pattern-4, witnesses: 2
@@
expression list listE0;
@@
- crypto_transfer_request_to_engine(listE0)
+ crypto_transfer_cipher_request_to_engine(listE0)
//# pattern-5, witnesses: 2
@@
expression E0;
@@
- E0->prepare_request
+ E0->prepare_cipher_request
