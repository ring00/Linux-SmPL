//# pattern-241, witnesses: 18
@@
expression E0;
@@
- E0->master
+ E0->controller
//# pattern-61, witnesses: 6
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier master;
identifier r0.fn;
@@
- void fn(struct spi_master * master)
+ void fn(struct spi_controller * ctlr)
 {
     <...
- master->queue_lock
+ ctlr->queue_lock
     ...>
 }
//# pattern-45, witnesses: 3
@@
expression ME0;
@@
- struct spi_master * master = spi->master;
- spin_unlock_irqrestore(&ME0, flags);
+ struct spi_controller * ctlr = spi->controller;
+ spin_unlock_irqrestore(&ME0, flags);
//# pattern-46, witnesses: 3
@@
expression ME0;
@@
- struct spi_master * master = spi->master;
- spin_lock_irqsave(&ME0, flags);
+ struct spi_controller * ctlr = spi->controller;
+ spin_lock_irqsave(&ME0, flags);
//# pattern-9, witnesses: 2
@@
identifier s;
@@
 struct class s = {
-    .dev_release = spi_master_release,
+    .dev_release = spi_controller_release,
 };
//# pattern-59, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier ctlr;
identifier r1.fn;
@@
 void fn(struct spi_controller * ctlr)
 {
     <...
- master->dev
+ ctlr->dev
     ...>
 }
//# pattern-64, witnesses: 2
@r2@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier ctlr;
@@
 void spi_finalize_current_message(struct spi_controller * ctlr)
 {
     <...
- master->cur_msg_prepared
+ ctlr->cur_msg_prepared
     ...>
 }
//# pattern-65, witnesses: 2
@r3@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier ctlr;
@@
 void spi_finalize_current_message(struct spi_controller * ctlr)
 {
     <...
- master->cur_msg
+ ctlr->cur_msg
     ...>
 }
//# pattern-73, witnesses: 2
@r4@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E1;
expression ME0;
typedef bool;
identifier dev;
identifier size;
identifier slave;
@@
- struct spi_master * __spi_alloc_controller(struct device * dev, unsigned int size, bool slave)
+ struct spi_controller * __spi_alloc_controller(struct device * dev, unsigned int size, bool slave)
 {
     <...
- struct spi_master * master = master;
- master = kzalloc(size + sizeof(unsigned long), GFP_KERNEL);
- ME0 = E1;
+ struct spi_controller * ctlr = ctlr;
+ ctlr = kzalloc(size + sizeof(unsigned long), GFP_KERNEL);
+ ME0 = E1;
     ...>
 }
//# pattern-82, witnesses: 2
@@
identifier fn;
identifier message;
identifier spi;
@@
 int fn(struct spi_device * spi, struct spi_message * message)
 {
     <...
- struct spi_master * master = spi->master;
- SPI_STATISTICS_INCREMENT_FIELD(&master->statistics);
+ struct spi_controller * ctlr = spi->controller;
+ SPI_STATISTICS_INCREMENT_FIELD(&ctlr->statistics);
     ...>
 }
//# pattern-105, witnesses: 2
@r5@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier master;
@@
- int spi_bus_lock(struct spi_master * master)
+ int spi_bus_lock(struct spi_controller * ctlr)
 {
     <...
- master->bus_lock_spinlock
+ ctlr->bus_lock_spinlock
     ...>
 }
//# pattern-106, witnesses: 2
@r6@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier ctlr;
identifier r6.fn;
@@
 int fn(struct spi_controller * ctlr)
 {
     <...
- master->bus_lock_mutex
+ ctlr->bus_lock_mutex
     ...>
 }
//# pattern-107, witnesses: 2
@r7@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier ctlr;
identifier r7.fn;
@@
 int fn(struct spi_controller * ctlr)
 {
     <...
- master->bus_lock_flag
+ ctlr->bus_lock_flag
     ...>
 }
//# pattern-136, witnesses: 2
@@
@@
- SPI_MASTER_MUST_RX
+ SPI_CONTROLLER_MUST_RX
//# pattern-234, witnesses: 2
@@
@@
- SPI_MASTER_MUST_TX
+ SPI_CONTROLLER_MUST_TX
