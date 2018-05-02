//# pattern-1, witnesses: 2
@@
@@
- spin_lock(&health->wq_lock);
- spin_unlock(&health->wq_lock);
+ unsigned long flags = flags;
+ spin_lock_irqsave(&health->wq_lock, flags);
+ spin_unlock_irqrestore(&health->wq_lock, flags);
