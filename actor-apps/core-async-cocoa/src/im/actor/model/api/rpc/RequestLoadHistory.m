//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestLoadHistory.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/OutPeer.h"
#include "im/actor/model/api/rpc/RequestLoadHistory.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface APRequestLoadHistory () {
 @public
  APOutPeer *peer_;
  jlong minDate_;
  jint limit_;
}

@end

J2OBJC_FIELD_SETTER(APRequestLoadHistory, peer_, APOutPeer *)

@implementation APRequestLoadHistory

+ (APRequestLoadHistory *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestLoadHistory_fromBytesWithByteArray_(data);
}

- (instancetype)initWithAPOutPeer:(APOutPeer *)peer
                         withLong:(jlong)minDate
                          withInt:(jint)limit {
  APRequestLoadHistory_initWithAPOutPeer_withLong_withInt_(self, peer, minDate, limit);
  return self;
}

- (instancetype)init {
  APRequestLoadHistory_init(self);
  return self;
}

- (APOutPeer *)getPeer {
  return self->peer_;
}

- (jlong)getMinDate {
  return self->minDate_;
}

- (jint)getLimit {
  return self->limit_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->peer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:new_APOutPeer_init()];
  self->minDate_ = [values getLongWithInt:3];
  self->limit_ = [values getIntWithInt:4];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->peer_];
  [writer writeLongWithInt:3 withLong:self->minDate_];
  [writer writeIntWithInt:4 withInt:self->limit_];
}

- (NSString *)description {
  NSString *res = @"rpc LoadHistory{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"peer=", self->peer_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", minDate=", self->minDate_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", limit=", self->limit_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestLoadHistory_HEADER;
}

@end

APRequestLoadHistory *APRequestLoadHistory_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestLoadHistory_initialize();
  return ((APRequestLoadHistory *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestLoadHistory_init(), data));
}

void APRequestLoadHistory_initWithAPOutPeer_withLong_withInt_(APRequestLoadHistory *self, APOutPeer *peer, jlong minDate, jint limit) {
  (void) APRequest_init(self);
  self->peer_ = peer;
  self->minDate_ = minDate;
  self->limit_ = limit;
}

APRequestLoadHistory *new_APRequestLoadHistory_initWithAPOutPeer_withLong_withInt_(APOutPeer *peer, jlong minDate, jint limit) {
  APRequestLoadHistory *self = [APRequestLoadHistory alloc];
  APRequestLoadHistory_initWithAPOutPeer_withLong_withInt_(self, peer, minDate, limit);
  return self;
}

void APRequestLoadHistory_init(APRequestLoadHistory *self) {
  (void) APRequest_init(self);
}

APRequestLoadHistory *new_APRequestLoadHistory_init() {
  APRequestLoadHistory *self = [APRequestLoadHistory alloc];
  APRequestLoadHistory_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestLoadHistory)
