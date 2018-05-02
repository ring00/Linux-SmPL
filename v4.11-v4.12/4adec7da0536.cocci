//# pattern-2, witnesses: 2
@@
@@
- struct iio_dev * indio_dev = dev_to_iio_dev(dev);
- struct stm32_timer_trigger * priv = iio_priv(indio_dev);
+ struct stm32_timer_trigger * priv = dev_get_drvdata(dev);
