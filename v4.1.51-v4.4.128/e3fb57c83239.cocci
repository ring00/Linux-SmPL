//# pattern-1, witnesses: 3
@@
expression E0;
identifier fn;
identifier sspi;
@@
 void fn(struct sirfsoc_spi * sspi)
 {
     <...
- E0 + SIRFSOC_SPI_RXFIFO_DATA
+ E0 + sspi->regs->rxfifo_data
     ...>
 }
//# pattern-2, witnesses: 3
@@
expression E0;
identifier fn;
identifier sspi;
@@
 void fn(struct sirfsoc_spi * sspi)
 {
     <...
- E0 + SIRFSOC_SPI_TXFIFO_DATA
+ E0 + sspi->regs->txfifo_data
     ...>
 }
//# pattern-14, witnesses: 2
@@
identifier s;
@@
 u32 s = {
 };
