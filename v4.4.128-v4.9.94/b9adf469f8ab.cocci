//# pattern-1, witnesses: 7
@r0@
identifier i, fn;
@@
struct mtd_part_parser i = {
    .parse_fn = fn,
};
@@
identifier data;
identifier master;
identifier pparts;
identifier r0.fn;
@@
- int fn(struct mtd_info * master, struct mtd_partition ** pparts, struct mtd_part_parser_data * data)
+ int fn(struct mtd_info * master, const struct mtd_partition ** pparts, struct mtd_part_parser_data * data)
 { ... }
