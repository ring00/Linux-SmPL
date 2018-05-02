//# pattern-2, witnesses: 5
@@
expression E0;
expression E1;
@@
- spin_lock_init(&E0->controller.lock);
- init_waitqueue_head(&E1->controller.wq);
+ nand_hw_control_init(&E0->controller);
//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
@@
- spin_lock_init(&E0->controller->lock);
- init_waitqueue_head(&E1->controller->wq);
+ nand_hw_control_init(E0->controller);
