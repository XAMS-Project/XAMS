# eXtendable Modular Android Suite

XAMS is a suite of Android programs that allow for *direct* remote
control of your Android device.

It takes after [Project MAXS][maxs], but is designed around an "device
abstraction layer" (or `DAL`) in the form of
the [XAMS router][router]. The router talks to the Android device
remotely using a specialized protocol over the MQTT broker. No user
talks to the Android device directly - unless its for
development/debugging. Instead, in stark contrast to Project MAXS, the
router acts as the intermediary between the user and their Android
device.

[maxs]: http://projectmaxs.org/homepage/
[router]: https://github.com/xams-project/router
