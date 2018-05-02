//# pattern-5, witnesses: 2
@@
identifier cfg;
identifier ts;
@@
 int goodix_check_cfg(struct goodix_ts_data * ts, const struct firmware * cfg)
 {
     <...
- int i = i;
- u8 check_sum = 0;
- raw_cfg_len = cfg->size - 2;
     ...>
 }
