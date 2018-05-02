//# pattern-1, witnesses: 2
@@
expression ME0;
@@
- u8 * u8 = map->work_buf;
- u8[0] |= ME0;
+ regmap_set_work_buf_flag_mask(map, map->format.reg_bytes, ME0);
