//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct mtd_part_parser i = {
    .parse_fn = fn,
};
@@
expression E0;
identifier data;
identifier master;
identifier pparts;
identifier r0.fn;
@@
 int fn(struct mtd_info * master, struct mtd_partition ** pparts, struct mtd_part_parser_data * data)
 {
     <...
- E0 = 
+ E0 = mtd_get_of_node(master)
     ...>
 }
