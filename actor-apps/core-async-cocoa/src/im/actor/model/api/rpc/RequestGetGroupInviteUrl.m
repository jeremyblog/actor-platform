//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestGetGroupInviteUrl.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/GroupOutPeer.h"
#include "im/actor/model/api/rpc/RequestGetGroupInviteUrl.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface APRequestGetGroupInviteUrl () {
 @public
  APGroupOutPeer *groupPeer_;
}

@end

J2OBJC_FIELD_SETTER(APRequestGetGroupInviteUrl, groupPeer_, APGroupOutPeer *)

@implementation APRequestGetGroupInviteUrl

+ (APRequestGetGroupInviteUrl *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestGetGroupInviteUrl_fromBytesWithByteArray_(data);
}

- (instancetype)initWithAPGroupOutPeer:(APGroupOutPeer *)groupPeer {
  APRequestGetGroupInviteUrl_initWithAPGroupOutPeer_(self, groupPeer);
  return self;
}

- (instancetype)init {
  APRequestGetGroupInviteUrl_init(self);
  return self;
}

- (APGroupOutPeer *)getGroupPeer {
  return self->groupPeer_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupPeer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:new_APGroupOutPeer_init()];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->groupPeer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->groupPeer_];
}

- (NSString *)description {
  NSString *res = @"rpc GetGroupInviteUrl{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"groupPeer=", self->groupPeer_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestGetGroupInviteUrl_HEADER;
}

@end

APRequestGetGroupInviteUrl *APRequestGetGroupInviteUrl_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestGetGroupInviteUrl_initialize();
  return ((APRequestGetGroupInviteUrl *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestGetGroupInviteUrl_init(), data));
}

void APRequestGetGroupInviteUrl_initWithAPGroupOutPeer_(APRequestGetGroupInviteUrl *self, APGroupOutPeer *groupPeer) {
  (void) APRequest_init(self);
  self->groupPeer_ = groupPeer;
}

APRequestGetGroupInviteUrl *new_APRequestGetGroupInviteUrl_initWithAPGroupOutPeer_(APGroupOutPeer *groupPeer) {
  APRequestGetGroupInviteUrl *self = [APRequestGetGroupInviteUrl alloc];
  APRequestGetGroupInviteUrl_initWithAPGroupOutPeer_(self, groupPeer);
  return self;
}

void APRequestGetGroupInviteUrl_init(APRequestGetGroupInviteUrl *self) {
  (void) APRequest_init(self);
}

APRequestGetGroupInviteUrl *new_APRequestGetGroupInviteUrl_init() {
  APRequestGetGroupInviteUrl *self = [APRequestGetGroupInviteUrl alloc];
  APRequestGetGroupInviteUrl_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestGetGroupInviteUrl)
