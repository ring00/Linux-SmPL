//# pattern-4, witnesses: 17
@@
expression IL0;
@@
- gpio_set_value(data->pdata->gpio_sck, IL0)
+ gpiod_set_value(data->sck, IL0)
//# pattern-6, witnesses: 5
@@
expression IL0;
@@
- gpio_direction_output(data->pdata->gpio_data, IL0)
+ gpiod_direction_output(data->data, IL0)
//# pattern-5, witnesses: 4
@@
expression E0;
@@
- gpio_set_value(data->pdata->gpio_data, E0)
+ gpiod_set_value(data->data, E0)
//# pattern-2, witnesses: 3
@@
@@
- gpio_get_value(data->pdata->gpio_data)
+ gpiod_get_value(data->data)
//# pattern-3, witnesses: 3
@@
@@
- gpio_direction_input(data->pdata->gpio_data)
+ gpiod_direction_input(data->data)
//# pattern-1, witnesses: 2
@@
identifier data;
identifier fn;
@@
 int fn(struct sht15_data * data)
 {
     <...
- gpio_set_value(data->pdata->gpio_sck, 0)
+ gpiod_set_value(data->sck, 0)
     ...>
 }
//# pattern-7, witnesses: 2
@@
identifier command;
identifier data;
identifier timeout_msecs;
@@
 int sht15_measurement(struct sht15_data * data, int command, int timeout_msecs)
 {
     <...
- gpio_to_irq(data->pdata->gpio_data)
+ gpiod_to_irq(data->data)
     ...>
 }
//# pattern-8, witnesses: 2
@@
@@
- gpio_to_irq(data->pdata->gpio_data)
+ gpiod_to_irq(data->data)
//# pattern-10, witnesses: 2
@@
@@
- gpio_get_value(data->pdata->gpio_data)
+ gpiod_get_value(data->data)
