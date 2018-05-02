//# pattern-5, witnesses: 2
@@
expression EC0;
@@
- struct page * first_page = first_page;
- zone = page_zone(first_page);
- zone_can_shift(start_pfn, nr_pages, EC0, &zone_shift);
+ unsigned long valid_start = valid_start;
+ valid_pages = valid_end - valid_start;
+ zone_can_shift(valid_start, valid_pages, EC0, &zone_shift);
