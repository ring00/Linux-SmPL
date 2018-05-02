//# pattern-15, witnesses: 9
@@
@@
- mmc_slot(host->pdata->slots[host->slot_id]).set_power
+ host->pdata->set_power
//# pattern-13, witnesses: 7
@@
@@
- mmc_slot(host->pdata->slots[host->slot_id]).ocr_mask
+ host->pdata->ocr_mask
//# pattern-14, witnesses: 6
@@
expression E0;
@@
- E0->slots[0].switch_pin
+ E0->switch_pin
//# pattern-17, witnesses: 4
@@
identifier fn;
identifier pdata;
@@
 int fn(struct omap_hsmmc_platform_data * pdata)
 {
     <...
- pdata->slots[0].switch_pin
+ pdata->switch_pin
     ...>
 }
//# pattern-2, witnesses: 3
@@
expression E0;
@@
- E0->slots[0].gpio_wp
+ E0->gpio_wp
//# pattern-4, witnesses: 3
@@
identifier pdata;
@@
 int omap_hsmmc_gpio_init(struct omap_hsmmc_platform_data * pdata)
 {
     <...
- pdata->slots[0].gpio_wp
+ pdata->gpio_wp
     ...>
 }
//# pattern-1, witnesses: 2
@@
@@
- mmc_slot(host->pdata->slots[host->slot_id]).get_ro
+ host->pdata->get_ro
//# pattern-3, witnesses: 2
@r0@
identifier fn;
expression P0, P1;
@@
sprintf(P0, P1, fn)
@@
identifier host;
@@
 int omap_hsmmc_cover_is_closed(struct omap_hsmmc_host * host)
 {
     <...
- mmc_slot(host->pdata->slots[host->slot_id]).get_cover_state
+ host->pdata->get_cover_state
     ...>
 }
//# pattern-5, witnesses: 2
@@
identifier pdata;
@@
 void omap_hsmmc_gpio_free(struct omap_hsmmc_platform_data * pdata)
 {
     <...
- pdata->slots[0].gpio_wp
+ pdata->gpio_wp
     ...>
 }
//# pattern-7, witnesses: 2
@@
@@
- mmc_slot(host->pdata->slots[host->slot_id]).name
+ host->pdata->name
//# pattern-8, witnesses: 2
@@
expression E0;
@@
- mmc_slot(host->pdata->slots[host->slot_id]).features & E0
+ host->pdata->features & E0
//# pattern-9, witnesses: 2
@@
@@
- mmc_slot(host->pdata->slots[host->slot_id]).before_set_reg
+ host->pdata->before_set_reg
//# pattern-10, witnesses: 2
@@
@@
- mmc_slot(host->pdata->slots[host->slot_id]).card_detect_irq
+ host->pdata->card_detect_irq
//# pattern-11, witnesses: 2
@@
@@
- mmc_slot(host->pdata->slots[host->slot_id]).card_detect
+ host->pdata->card_detect
//# pattern-19, witnesses: 2
@@
@@
- mmc_slot(host->pdata->slots[host->slot_id]).after_set_reg
+ host->pdata->after_set_reg
//# pattern-20, witnesses: 2
@@
@@
- mmc_slot(host->pdata->slots[host->slot_id]).init_card
+ host->pdata->init_card
//# pattern-22, witnesses: 2
@@
identifier host;
@@
 void omap_hsmmc_protect_card(struct omap_hsmmc_host * host)
 {
     <...
- mmc_slot(host->pdata->slots[host->slot_id]).get_cover_state
+ host->pdata->get_cover_state
     ...>
 }
//# pattern-24, witnesses: 2
@@
@@
- mmc->slots[0].card_detect_irq
+ mmc->card_detect_irq
