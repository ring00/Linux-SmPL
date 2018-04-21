//# pattern-2, witnesses: 5
@@
identifier fn;
identifier mapping;
identifier mode;
identifier newpage;
identifier page;
@@
 int fn(struct address_space * mapping, struct page * newpage, struct page * page, enum migrate_mode mode)
 {
     <...
+ if (mode != MIGRATE_SYNC_NO_COPY) {
+ }
     ...>
 }
