//# pattern-1, witnesses: 7
@@
expression E0;
@@
- E0->desc
+ E0->gpiodev->descs
//# pattern-5, witnesses: 4
@@
@@
- chip->desc
+ chip->gpiodev->descs
//# pattern-4, witnesses: 2
@@
@@
- gdev->chip->desc
+ gdev->descs
