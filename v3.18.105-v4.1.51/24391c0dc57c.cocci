//# pattern-10, witnesses: 2
@@
expression E1;
expression E2;
expression ME0;
identifier data;
identifier fn;
@@
 unsigned int fn(struct blk_mq_alloc_data * data)
 {
     <...
- bt_get(data, &ME0, E1, &E2)
+ bt_get(data, &ME0, E1, &E2, data->hctx->tags)
     ...>
 }
