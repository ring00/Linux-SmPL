//# pattern-127, witnesses: 19
@@
expression E0;
@@
- E0->bgc.lock
+ E0->gc.bgpio_lock
//# pattern-47, witnesses: 12
@@
@@
- priv->bgc.gc
+ priv->gc
//# pattern-108, witnesses: 9
@@
@@
- port->bgc.gc
+ port->gc
//# pattern-55, witnesses: 8
@@
expression E0;
@@
- E0->bgc.gc
+ E0->gc
//# pattern-143, witnesses: 7
@@
expression E0;
@@
- E0->bgc
+ E0->gc
//# pattern-125, witnesses: 6
@@
expression list listE0;
@@
- to_etraxfs(listE0)
+ gpiochip_get_data(listE0)
//# pattern-8, witnesses: 5
@@
@@
- struct bgpio_chip * bgc = &gpio->ports[0].bgc;
- spin_unlock_irqrestore(&bgc->lock, flags);
+ struct gpio_chip * gc = &gpio->ports[0].gc;
+ spin_unlock_irqrestore(&gc->bgpio_lock, flags);
//# pattern-9, witnesses: 5
@@
@@
- struct bgpio_chip * bgc = &gpio->ports[0].bgc;
- spin_lock_irqsave(&bgc->lock, flags);
+ struct gpio_chip * gc = &gpio->ports[0].gc;
+ spin_lock_irqsave(&gc->bgpio_lock, flags);
//# pattern-21, witnesses: 5
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
expression E6;
expression E7;
@@
- bgpio_init(bgc, E0, E1, E2, E3, E4, E5, E6, E7)
+ bgpio_init(gc, E0, E1, E2, E3, E4, E5, E6, E7)
//# pattern-79, witnesses: 5
@@
expression list listE0;
@@
- brcmstb_gpio_gc_to_bank(listE0)
+ gpiochip_get_data(listE0)
//# pattern-6, witnesses: 3
@@
expression list listE0;
@@
- to_74xx_gpio(listE0)
+ gpiochip_get_data(listE0)
//# pattern-43, witnesses: 3
@@
type T0;
type T1;
identifier fn;
identifier gc;
identifier offset;
@@
 int fn(struct gpio_chip * gc, unsigned int offset)
 {
     <...
- struct bgpio_chip * bgc = to_bgpio_chip(gc);
- T0 port = container_of(bgc, );
+ T1 port = gpiochip_get_data(gc);
     ...>
 }
//# pattern-62, witnesses: 3
@@
identifier fn;
identifier pdev;
@@
 int fn(struct platform_device * pdev)
 {
     <...
- struct bgpio_chip * bgc = bgc;
- bgc = devm_kzalloc(&pdev->dev, sizeof(unsigned long), GFP_KERNEL);
- if (!bgc) {
- }
+ struct gpio_chip * gc = gc;
+ gc = devm_kzalloc(&pdev->dev, sizeof(unsigned long), GFP_KERNEL);
+ if (!gc) {
+ }
     ...>
 }
//# pattern-189, witnesses: 3
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier bgc;
identifier clr;
identifier dat;
identifier dev;
identifier dirin;
identifier dirout;
identifier flags;
identifier set;
identifier sz;
@@
- int bgpio_init(struct bgpio_chip * bgc, struct device * dev, unsigned long sz, void * dat, void * set, void * clr, void * dirout, void * dirin, unsigned long flags)
+ int bgpio_init(struct gpio_chip * gc, struct device * dev, unsigned long sz, void * dat, void * set, void * clr, void * dirout, void * dirin, unsigned long flags)
 {
     <...
- bgc->read_reg
+ gc->read_reg
     ...>
 }
//# pattern-11, witnesses: 2
@@
expression E10;
expression E15;
expression E3;
expression E7;
expression ME14;
expression ME2;
expression ME6;
expression ME9;
expression V0;
expression V1;
expression V11;
expression V12;
expression V13;
expression V16;
expression V17;
expression V4;
expression V5;
expression V8;
@@
- V0 = V1->bgc.read_reg(ME2 + E3) & ~mask;
- V4 = V5->bgc.read_reg(ME6 + E7) & ~mask;
- V8->bgc.write_reg(ME9 + E10, V11 | V12);
- V13->bgc.write_reg(ME14 + E15, V16 | V17);
+ V0 = V1->gc.read_reg(ME9 + E10) & ~mask;
+ V4 = V5->gc.read_reg(ME14 + E15) & ~mask;
+ V8->gc.write_reg(ME2 + E3, V11 | V12);
+ V13->gc.write_reg(ME6 + E7, V16 | V17);
//# pattern-40, witnesses: 2
@@
expression ME0;
identifier bits;
identifier fn;
identifier gc;
identifier mask;
@@
 void fn(struct gpio_chip * gc, unsigned long * mask, unsigned long * bits)
 {
     <...
- struct bgpio_chip * bgc = to_bgpio_chip(gc);
- bgpio_set_multiple_single_reg(bgc, mask, bits, ME0);
+ bgpio_set_multiple_single_reg(gc, mask, bits, ME0);
     ...>
 }
//# pattern-52, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier clr;
identifier dat;
identifier dev;
identifier dirin;
identifier dirout;
identifier flags;
identifier gc;
identifier set;
identifier sz;
@@
 int bgpio_init(struct gpio_chip * gc, struct device * dev, unsigned long sz, void * dat, void * set, void * clr, void * dirout, void * dirin, unsigned long flags)
 {
     <...
- bgc->data
+ gc->bgpio_data
     ...>
 }
//# pattern-57, witnesses: 2
@@
expression E0;
@@
- gpio->ports[E0].bgc
+ gpio->ports[E0]
//# pattern-61, witnesses: 2
@r2@
identifier i, fn;
@@
struct platform_driver i = {
    .probe = fn,
};
@@
identifier pdev;
identifier r2.fn;
@@
 int fn(struct platform_device * pdev)
 {
     <...
- struct bgpio_chip * bgc = bgc;
- bgc = devm_kzalloc(&pdev->dev, sizeof(unsigned long), GFP_KERNEL);
- return gpiochip_add(&bgc->gc);
+ struct gpio_chip * gc = gc;
+ gc = devm_kzalloc(&pdev->dev, sizeof(unsigned long), GFP_KERNEL);
+ return gpiochip_add_data(gc, NULL);
     ...>
 }
//# pattern-63, witnesses: 2
@r3@
identifier i, fn;
@@
struct platform_driver i = {
    .probe = fn,
};
@@
identifier pdev;
identifier r3.fn;
@@
 int fn(struct platform_device * pdev)
 {
     <...
- struct bgpio_chip * bgc = bgc;
- bgc = devm_kzalloc(&pdev->dev, sizeof(unsigned long), GFP_KERNEL);
- platform_set_drvdata(pdev, bgc);
+ struct gpio_chip * gc = gc;
+ gc = devm_kzalloc(&pdev->dev, sizeof(unsigned long), GFP_KERNEL);
+ platform_set_drvdata(pdev, gc);
     ...>
 }
//# pattern-65, witnesses: 2
@@
@@
- gpiochip_add(&priv->bgc.gc)
+ gpiochip_add_data(&priv->gc, priv)
//# pattern-66, witnesses: 2
@@
expression ME1;
expression V0;
expression V2;
identifier bits;
identifier gc;
identifier mask;
@@
 void bgpio_set_multiple_with_clear(struct gpio_chip * gc, unsigned long * mask, unsigned long * bits)
 {
     <...
- struct bgpio_chip * bgc = to_bgpio_chip(gc);
- if (V0) {
- bgc->write_reg(ME1, V2);
- }
+ if (V0) {
+ gc->write_reg(ME1, V2);
+ }
     ...>
 }
//# pattern-103, witnesses: 2
@@
expression E0;
identifier fn;
identifier pdev;
@@
 int fn(struct platform_device * pdev)
 {
     <...
- struct bgpio_chip * bgc = bgc;
- bgc = devm_kzalloc(&pdev->dev, sizeof(unsigned long), GFP_KERNEL);
- bgc->gc.base = E0;
+ struct gpio_chip * gc = gc;
+ gc = devm_kzalloc(&pdev->dev, sizeof(unsigned long), GFP_KERNEL);
+ gc->base = E0;
     ...>
 }
//# pattern-118, witnesses: 2
@@
@@
- gpiochip_add(&port->bgc.gc)
+ gpiochip_add_data(&port->gc, port)
//# pattern-164, witnesses: 2
@@
expression S0;
@@
- struct bgpio_chip * bgc = &chip->bgc;
- if (ret) {
- dev_err(dev, S0, bgc->gc.label);
- }
+ struct gpio_chip * gc = &chip->gc;
+ if (ret) {
+ dev_err(dev, S0, gc->label);
+ }
//# pattern-188, witnesses: 2
@r4@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier clr;
identifier dat;
identifier dev;
identifier dirin;
identifier dirout;
identifier flags;
identifier gc;
identifier set;
identifier sz;
@@
 int bgpio_init(struct gpio_chip * gc, struct device * dev, unsigned long sz, void * dat, void * set, void * clr, void * dirout, void * dirin, unsigned long flags)
 {
     <...
- bgc->reg_dir
+ gc->reg_dir
     ...>
 }
//# pattern-190, witnesses: 2
@r5@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier clr;
identifier dat;
identifier dev;
identifier dirin;
identifier dirout;
identifier flags;
identifier gc;
identifier set;
identifier sz;
@@
 int bgpio_init(struct gpio_chip * gc, struct device * dev, unsigned long sz, void * dat, void * set, void * clr, void * dirout, void * dirin, unsigned long flags)
 {
     <...
- bgc->bits
+ gc->bgpio_bits
     ...>
 }
