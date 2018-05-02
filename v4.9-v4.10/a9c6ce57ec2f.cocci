//# pattern-2, witnesses: 2
@@
@@
- (led_cdev->flags & LED_BLINK_ONESHOT)
+ test_bit(LED_BLINK_ONESHOT, &led_cdev->work_flags)
//# pattern-11, witnesses: 2
@@
@@
- led_cdev->flags |= LED_BLINK_ONESHOT_STOP;
+ set_bit(LED_BLINK_ONESHOT_STOP, &led_cdev->work_flags);
//# pattern-16, witnesses: 2
@@
@@
- led_cdev->flags &= ~LED_BLINK_SW;
+ clear_bit(LED_BLINK_SW, &led_cdev->work_flags);
