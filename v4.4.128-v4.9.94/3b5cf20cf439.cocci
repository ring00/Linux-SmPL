//# pattern-6, witnesses: 21
@@
expression list listE0;
@@
- crypto_free_blkcipher(listE0)
+ crypto_free_skcipher(listE0)
//# pattern-8, witnesses: 9
@@
expression list listE0;
@@
- crypto_alloc_blkcipher(listE0)
+ crypto_alloc_skcipher(listE0)
//# pattern-32, witnesses: 6
@@
expression list listE0;
@@
- crypto_blkcipher_blocksize(listE0)
+ crypto_skcipher_blocksize(listE0)
//# pattern-13, witnesses: 3
@@
expression list listE0;
@@
- crypto_blkcipher_ivsize(listE0)
+ crypto_skcipher_ivsize(listE0)
//# pattern-14, witnesses: 3
@@
expression list listE0;
@@
- crypto_blkcipher_ivsize(listE0)
+ crypto_skcipher_ivsize(listE0)
//# pattern-21, witnesses: 3
@@
expression list listE0;
@@
- crypto_blkcipher_setkey(listE0)
+ crypto_skcipher_setkey(listE0)
//# pattern-2, witnesses: 2
@@
identifier body;
identifier body_offset;
identifier cksumkey;
identifier cksumout;
identifier fn;
identifier hdrlen;
identifier header;
identifier kctx;
typedef u32;
identifier usage;
@@
 u32 fn(struct krb5_ctx * kctx, char * header, int hdrlen, struct xdr_buf * body, int body_offset, u8 * cksumkey, unsigned int usage, struct xdr_netobj * cksumout)
 {
     <...
- xdr_process_buf(body, body_offset, body->len - body_offset, checksummer, &desc)
+ xdr_process_buf(body, body_offset, body->len - body_offset, checksummer, req)
     ...>
 }
//# pattern-18, witnesses: 2
@@
@@
- crypto_hash_digestsize(desc.tfm)
+ crypto_ahash_digestsize(tfm)
//# pattern-27, witnesses: 2
@@
@@
- crypto_hash_init(&desc)
+ crypto_ahash_init(req)
//# pattern-30, witnesses: 2
@@
@@
- crypto_hash_final(&desc, checksumdata)
+ crypto_ahash_final(req)
//# pattern-36, witnesses: 2
@@
@@
- crypto_blkcipher_blocksize(desc->desc.tfm)
+ crypto_skcipher_blocksize(tfm)
//# pattern-37, witnesses: 2
@@
@@
- desc.desc.info = desc.iv;
- desc.desc.flags = 0;
- desc.desc.tfm = aux_cipher;
+ char [sizeof(struct skcipher_request) + crypto_skcipher_reqsize(aux_cipher)] __req_desc = __req_desc;
+ struct skcipher_request * req = __req_desc;
+ desc.req = req;
+ skcipher_request_set_tfm(req, aux_cipher);
+ skcipher_request_set_callback(req, 0, NULL, NULL);
+ skcipher_request_zero(req);
