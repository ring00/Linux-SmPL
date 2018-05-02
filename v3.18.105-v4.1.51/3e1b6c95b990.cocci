//# pattern-3, witnesses: 6
@@
@@
- iio_buffer_unregister(indio_dev);
//# pattern-8, witnesses: 3
@@
@@
- ret = iio_buffer_register(indio_dev, indio_dev->channels, indio_dev->num_channels);
- if (ret) {
- }
