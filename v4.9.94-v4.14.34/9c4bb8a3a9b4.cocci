//# pattern-4, witnesses: 2
@@
@@
- fscrypt_decrypt_page(page->mapping->host, page, PAGE_SIZE, 0)
+ fscrypt_decrypt_page(page->mapping->host, page, PAGE_SIZE, 0, page->index)
