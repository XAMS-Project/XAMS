struct SMS_Self {
  1: required string _from;
  2: required string _to;
}

struct SMSThread {
  1: required SMS_Self _self;
  2: required string message;
}
