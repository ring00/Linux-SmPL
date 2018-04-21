//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- aio_complete(listE0)
+ iocb->ki_complete(listE0)
