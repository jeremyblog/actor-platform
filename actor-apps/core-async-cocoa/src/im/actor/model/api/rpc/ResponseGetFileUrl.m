//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/ResponseGetFileUrl.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/ResponseGetFileUrl.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Response.h"
#include "java/io/IOException.h"

@interface APResponseGetFileUrl () {
 @public
  NSString *url_;
  jint timeout_;
}

@end

J2OBJC_FIELD_SETTER(APResponseGetFileUrl, url_, NSString *)

@implementation APResponseGetFileUrl

+ (APResponseGetFileUrl *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APResponseGetFileUrl_fromBytesWithByteArray_(data);
}

- (instancetype)initWithNSString:(NSString *)url
                         withInt:(jint)timeout {
  APResponseGetFileUrl_initWithNSString_withInt_(self, url, timeout);
  return self;
}

- (instancetype)init {
  APResponseGetFileUrl_init(self);
  return self;
}

- (NSString *)getUrl {
  return self->url_;
}

- (jint)getTimeout {
  return self->timeout_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->url_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
  self->timeout_ = [values getIntWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->url_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->url_];
  [writer writeIntWithInt:2 withInt:self->timeout_];
}

- (NSString *)description {
  NSString *res = @"tuple GetFileUrl{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APResponseGetFileUrl_HEADER;
}

@end

APResponseGetFileUrl *APResponseGetFileUrl_fromBytesWithByteArray_(IOSByteArray *data) {
  APResponseGetFileUrl_initialize();
  return ((APResponseGetFileUrl *) BSBser_parseWithBSBserObject_withByteArray_(new_APResponseGetFileUrl_init(), data));
}

void APResponseGetFileUrl_initWithNSString_withInt_(APResponseGetFileUrl *self, NSString *url, jint timeout) {
  (void) APResponse_init(self);
  self->url_ = url;
  self->timeout_ = timeout;
}

APResponseGetFileUrl *new_APResponseGetFileUrl_initWithNSString_withInt_(NSString *url, jint timeout) {
  APResponseGetFileUrl *self = [APResponseGetFileUrl alloc];
  APResponseGetFileUrl_initWithNSString_withInt_(self, url, timeout);
  return self;
}

void APResponseGetFileUrl_init(APResponseGetFileUrl *self) {
  (void) APResponse_init(self);
}

APResponseGetFileUrl *new_APResponseGetFileUrl_init() {
  APResponseGetFileUrl *self = [APResponseGetFileUrl alloc];
  APResponseGetFileUrl_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APResponseGetFileUrl)
