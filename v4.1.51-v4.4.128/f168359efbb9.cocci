//# pattern-1, witnesses: 2
@@
@@
- card->host->ops->select_drive_strength(card->sw_caps.uhs_max_dtr, host_drv_type, card_drv_type, &drv_type)
+ card->host->ops->select_drive_strength(card, card->sw_caps.uhs_max_dtr, host_drv_type, card_drv_type, &drv_type)
