//# pattern-2, witnesses: 2
@@
@@
- mutex_unlock(&phydev->lock);
//# pattern-3, witnesses: 2
@@
@@
- mutex_lock(&phydev->lock);
