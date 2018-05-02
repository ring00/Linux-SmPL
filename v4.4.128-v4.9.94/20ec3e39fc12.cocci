//# pattern-4, witnesses: 3
@@
@@
- acpi_gpiochip_pin_to_gpio_offset(chip, pin)
+ acpi_gpiochip_pin_to_gpio_offset(chip->gpiodev, pin)
//# pattern-7, witnesses: 3
@@
@@
- chip->pin_ranges
+ gdev->pin_ranges
