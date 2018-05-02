//# pattern-1, witnesses: 3
@@
@@
- unsigned long flags = flags;
- spin_lock_irqsave(&bitbang->lock, flags);
- spin_unlock_irqrestore(&bitbang->lock, flags);
+ mutex_lock(&bitbang->lock);
+ mutex_unlock(&bitbang->lock);
