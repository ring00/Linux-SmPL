//# pattern-7, witnesses: 3
@@
@@
- fscrypt_decrypt_page(page->mapping->host, page)
+ fscrypt_decrypt_page(page->mapping->host, page, PAGE_SIZE, 0)
