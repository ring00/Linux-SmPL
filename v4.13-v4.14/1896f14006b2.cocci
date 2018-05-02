//# pattern-1, witnesses: 2
@@
@@
- unsigned long flags = flags;
- spin_unlock_irqrestore(&host->lock, flags);
//# pattern-3, witnesses: 2
@@
@@
- unsigned long flags = flags;
- spin_lock_irqsave(&host->lock, flags);
