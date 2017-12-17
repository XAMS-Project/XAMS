struct Device {
  1: required string uuid;
  2: required string type;
}

struct _Self {
  1: required Device device;
  2: optional i8 direction;
}
