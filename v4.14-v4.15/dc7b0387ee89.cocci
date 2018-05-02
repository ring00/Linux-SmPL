//# pattern-2, witnesses: 9
@@
expression E0;
@@
- E0->irq_valid_mask
+ E0->irq.valid_mask
//# pattern-1, witnesses: 4
@@
expression E0;
@@
- E0->irq_need_valid_mask
+ E0->irq.need_valid_mask
//# pattern-3, witnesses: 2
@@
expression V0;
@@
- V0->chip.irq_need_valid_mask
+ V0->chip.irq.need_valid_mask
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- E0->chip.irq_valid_mask
+ E0->chip.irq.valid_mask
