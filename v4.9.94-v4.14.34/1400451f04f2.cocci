//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier gfp_flags;
typedef gfp_t;
identifier index;
identifier inode;
identifier plaintext_len;
identifier plaintext_offset;
identifier plaintext_page;
typedef u64;
@@
- struct page * fscrypt_encrypt_page(const struct inode * inode, struct page * plaintext_page, unsigned int plaintext_len, unsigned int plaintext_offset, unsigned long index, gfp_t gfp_flags)
+ struct page * fscrypt_encrypt_page(const struct inode * inode, struct page * page, unsigned int len, unsigned int offs, u64 lblk_num, gfp_t gfp_flags)
 {
     <...
- do_page_crypto(inode, FS_ENCRYPT, index, plaintext_page, ciphertext_page, plaintext_len, plaintext_offset, gfp_flags)
+ do_page_crypto(inode, FS_ENCRYPT, lblk_num, page, ciphertext_page, len, offs, gfp_flags)
     ...>
 }
