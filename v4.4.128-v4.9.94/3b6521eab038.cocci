//# pattern-1, witnesses: 2
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
 int fn(struct mtd_info * master, struct mtd_partition ** pparts, struct mtd_part_parser_data * data)
 {
     <...
- if (!data) {
- return 0;
- }
     ...>
 }
//# pattern-2, witnesses: 2
@r1@
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
identifier r1.fn;
@@
 int fn(struct mtd_info * master, struct mtd_partition ** pparts, struct mtd_part_parser_data * data)
 {
     <...
- E0 = data->of_node
+ E0 = 
     ...>
 }
