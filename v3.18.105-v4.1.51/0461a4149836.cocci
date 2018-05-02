//# pattern-2, witnesses: 3
@@
identifier msg;
identifier spi;
@@
 int spi_queued_transfer(struct spi_device * spi, struct spi_message * msg)
 {
     <...
- struct spi_master * master = spi->master;
- unsigned long flags = flags;
     ...>
 }
//# pattern-3, witnesses: 2
@@
identifier msg;
identifier spi;
@@
 int spi_queued_transfer(struct spi_device * spi, struct spi_message * msg)
 {
     <...
- struct spi_master * master = spi->master;
     ...>
 }
