//# pattern-4, witnesses: 2
@@
expression E0;
@@
- mutex_unlock(&E0->mipi->lock);
//# pattern-6, witnesses: 2
@@
expression E0;
@@
- mutex_lock(&E0->mipi->lock);
