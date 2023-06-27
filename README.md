# eXtendable Mobile Control Suite

## What is XMCS?

XMCS is a set of protocols for Android, iOS, Sailfish, postmarketOS, and
UBPorts, that allow for implementation of an application suite for remote
control of your mobile device.

XMCS is inspired by [Project MAXS][maxs], but goes through the XMCS router, and
the XMCS app is one single application, to make it more user friendly.

## The XMCS router.

The router talks to the mobile device remotely using a specialized
protocol over the MQTT broker. No user talks to the mobile device
directly - unless its for development/debugging.

Instead, in stark contrast to Project MAXS, the router acts as the
intermediary between the user and their mobile device.

## Differences to Project MAXS

In line with my views on standardisation and openness, the XMCS project
will have open specifications for each module, so that anyone with the
skills for working with XMCS can make their _own_ version of XMCS,
without having to reverse-engineer or reimplement the code in XMCS's
associated repositories.

Some people have asked me why I couldn't just add a new `Transport` to
the MAXS project. I will list these reasons below:

- I believe that a **fresh attempt** at the capabilities of MAXS and
  GTalkSMS is necessary. There is nothing wrong with a reimplementation,
  especially when it is being done on one's own time, and brainpower.

  XMCS is merely an experiment. It might work better than MAXS, it may
  not. I believe that XMCS's approach to remote control of an mobile
  device is better than MAXS, as the processing is done on a separate
  machine, and by using a protocol *designed* for low power usage, and
  low bandwidth, this will achieve great savings in both power usage,
  and data.

I will be making more illustrations to present the differences between
XMCS and MAXS at a later date.

## Status

Currently, the core component of the XMCS project, the router, is
still in development. I am currently trying to resolve an
[issue][emqttc_issue] with the [Erlang MQTT client library][emqttc],
which affects the library's interaction with the Mosquitto
broker. This should be resolved soon, and I hope that development can
resume on the XMCS router as soon as possible.

Regarding the mobile app development, this will commence once the
Thrift schemas have been developed to a suitable state, and the XMCS
router works with the aforementioned schemas.

[maxs]: http://projectmaxs.org/homepage/
[router]: https://github.com/xams-project/router
[emqttc_issue]: https://github.com/emqtt/emqttc/issues/51
[emqttc]: https://github.com/emqtt/emqttc
