//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/updates/UpdateMessageDateChanged.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/updates/UpdateMessageDateChanged.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Update.h"
#include "java/io/IOException.h"

@interface APUpdateMessageDateChanged () {
 @public
  APPeer *peer_;
  jlong rid_;
  jlong date_;
}

@end

J2OBJC_FIELD_SETTER(APUpdateMessageDateChanged, peer_, APPeer *)

@implementation APUpdateMessageDateChanged

+ (APUpdateMessageDateChanged *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APUpdateMessageDateChanged_fromBytesWithByteArray_(data);
}

- (instancetype)initWithAPPeer:(APPeer *)peer
                      withLong:(jlong)rid
                      withLong:(jlong)date {
  APUpdateMessageDateChanged_initWithAPPeer_withLong_withLong_(self, peer, rid, date);
  return self;
}

- (instancetype)init {
  APUpdateMessageDateChanged_init(self);
  return self;
}

- (APPeer *)getPeer {
  return self->peer_;
}

- (jlong)getRid {
  return self->rid_;
}

- (jlong)getDate {
  return self->date_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->peer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:new_APPeer_init()];
  self->rid_ = [values getLongWithInt:2];
  self->date_ = [values getLongWithInt:3];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->peer_];
  [writer writeLongWithInt:2 withLong:self->rid_];
  [writer writeLongWithInt:3 withLong:self->date_];
}

- (NSString *)description {
  NSString *res = @"update MessageDateChanged{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"peer=", self->peer_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", rid=", self->rid_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", date=", self->date_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APUpdateMessageDateChanged_HEADER;
}

@end

APUpdateMessageDateChanged *APUpdateMessageDateChanged_fromBytesWithByteArray_(IOSByteArray *data) {
  APUpdateMessageDateChanged_initialize();
  return ((APUpdateMessageDateChanged *) BSBser_parseWithBSBserObject_withByteArray_(new_APUpdateMessageDateChanged_init(), data));
}

void APUpdateMessageDateChanged_initWithAPPeer_withLong_withLong_(APUpdateMessageDateChanged *self, APPeer *peer, jlong rid, jlong date) {
  (void) APUpdate_init(self);
  self->peer_ = peer;
  self->rid_ = rid;
  self->date_ = date;
}

APUpdateMessageDateChanged *new_APUpdateMessageDateChanged_initWithAPPeer_withLong_withLong_(APPeer *peer, jlong rid, jlong date) {
  APUpdateMessageDateChanged *self = [APUpdateMessageDateChanged alloc];
  APUpdateMessageDateChanged_initWithAPPeer_withLong_withLong_(self, peer, rid, date);
  return self;
}

void APUpdateMessageDateChanged_init(APUpdateMessageDateChanged *self) {
  (void) APUpdate_init(self);
}

APUpdateMessageDateChanged *new_APUpdateMessageDateChanged_init() {
  APUpdateMessageDateChanged *self = [APUpdateMessageDateChanged alloc];
  APUpdateMessageDateChanged_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APUpdateMessageDateChanged)
