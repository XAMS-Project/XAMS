include "self.thrift"

struct Response {
  1: self._Self _self,
  2: Payload payload,
}
