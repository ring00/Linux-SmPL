//# pattern-2, witnesses: 2
@@
@@
- fscrypt_decrypt_page(page)
+ fscrypt_decrypt_page(page->mapping->host, page)
