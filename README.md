# eXtendable Modular Android Suite

## What is XAMS?

XAMS is a suite of Android programs that allow for *direct* remote
control of your Android device.

XAMS is inspired by [Project MAXS][maxs], but is designed around an
"device abstraction layer" (or `DAL`) in the form of the [XAMS
router][router].

## The XAMS router.

The router talks to the Android device remotely using a specialized
protocol over the MQTT broker. No user talks to the Android device
directly - unless its for development/debugging.

Instead, in stark contrast to Project MAXS, the router acts as the
intermediary between the user and their Android device.

## Differences to Project MAXS

In line with my views on standardisation and openness, the XAMS project
will have open specifications for each module, so that anyone with the
skills for working with XAMS can make their _own_ version of XAMS,
without having to reverse-engineer or reimplement the code in XAMS's
associated repositories.

Some people have asked me why I couldn't just add a new `Transport` to
the MAXS project. I will list these reasons below:

- I believe that a **fresh attempt** at the capabilities of MAXS and
  GTalkSMS is necessary. There is nothing wrong with a reimplementation,
  especially when it is being done on one's own time, and brainpower.

  XAMS is merely an experiment. It might work better than MAXS, it may
  not. I believe that XAMS's approach to remote control of an Android
  device is better than MAXS, as the processing is done on a separate
  machine, and by using a protocol *designed* for low power usage, and
  low bandwidth, this will achieve great savings in both power usage,
  and data.

I will be making more illustrations to present the differences between
XAMS and MAXS at a later date.

## Status

Currently, the core component of the XAMS project, the router, is
still in development. I am currently trying to resolve an
[issue][emqttc_issue] with the [Erlang MQTT client library][emqttc],
which affects the library's interaction with the Mosquitto
broker. This should be resolved soon, and I hope that development can
resume on the XAMS router as soon as possible.

Regarding the Android app development, this will commence once the
Thrift schemas have been developed to a suitable state, and the XAMS
router works with the aforementioned schemas.

[maxs]: http://projectmaxs.org/homepage/
[router]: https://github.com/xams-project/router
[emqttc_issue]: https://github.com/emqtt/emqttc/issues/51
[emqttc]: https://github.com/emqtt/emqttc
