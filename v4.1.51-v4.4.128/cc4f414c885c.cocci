//# pattern-1, witnesses: 2
@@
expression E0;
expression E2;
expression IL1;
identifier card;
identifier fn;
@@
 int fn(struct mmc_card * card)
 {
     <...
- err = __mmc_switch(card, EXT_CSD_CMD_SET_NORMAL, EXT_CSD_HS_TIMING, EXT_CSD_TIMING_HS, card->ext_csd.generic_cmd6_time, true, E0, true);
- err = __mmc_switch(card, EXT_CSD_CMD_SET_NORMAL, EXT_CSD_HS_TIMING, IL1, card->ext_csd.generic_cmd6_time, true, E2, true);
+ u8 val = val;
+ val = EXT_CSD_TIMING_HS | card->drive_strength << EXT_CSD_DRV_STR_SHIFT;
+ err = __mmc_switch(card, EXT_CSD_CMD_SET_NORMAL, EXT_CSD_HS_TIMING, val, card->ext_csd.generic_cmd6_time, true, E0, true);
+ val = IL1 | card->drive_strength << EXT_CSD_DRV_STR_SHIFT;
+ err = __mmc_switch(card, EXT_CSD_CMD_SET_NORMAL, EXT_CSD_HS_TIMING, val, card->ext_csd.generic_cmd6_time, true, E2, true);
     ...>
 }
