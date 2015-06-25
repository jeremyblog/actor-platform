//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/entity/compat/content/ObsoleteFastThumb.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/FastThumb.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/compat/content/ObsoleteFastThumb.h"
#include "im/actor/model/entity/content/internal/LocalFastThumb.h"
#include "java/io/IOException.h"
#include "java/lang/UnsupportedOperationException.h"

@interface ImActorModelEntityCompatContentObsoleteFastThumb () {
 @public
  jint w_;
  jint h_;
  IOSByteArray *image_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelEntityCompatContentObsoleteFastThumb, image_, IOSByteArray *)

@implementation ImActorModelEntityCompatContentObsoleteFastThumb

- (instancetype)initWithByteArray:(IOSByteArray *)data {
  ImActorModelEntityCompatContentObsoleteFastThumb_initWithByteArray_(self, data);
  return self;
}

- (jint)getW {
  return w_;
}

- (jint)getH {
  return h_;
}

- (IOSByteArray *)getImage {
  return image_;
}

- (APFastThumb *)toApiFastThumb {
  return new_APFastThumb_initWithInt_withInt_withByteArray_(w_, h_, image_);
}

- (ImActorModelEntityContentInternalLocalFastThumb *)toFastThumb {
  return new_ImActorModelEntityContentInternalLocalFastThumb_initWithInt_withInt_withByteArray_(w_, h_, image_);
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  w_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  h_ = [values getIntWithInt:2];
  image_ = [values getBytesWithInt:3];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  @throw new_JavaLangUnsupportedOperationException_init();
}

@end

void ImActorModelEntityCompatContentObsoleteFastThumb_initWithByteArray_(ImActorModelEntityCompatContentObsoleteFastThumb *self, IOSByteArray *data) {
  (void) BSBserObject_init(self);
  [self load__WithByteArray:data];
}

ImActorModelEntityCompatContentObsoleteFastThumb *new_ImActorModelEntityCompatContentObsoleteFastThumb_initWithByteArray_(IOSByteArray *data) {
  ImActorModelEntityCompatContentObsoleteFastThumb *self = [ImActorModelEntityCompatContentObsoleteFastThumb alloc];
  ImActorModelEntityCompatContentObsoleteFastThumb_initWithByteArray_(self, data);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelEntityCompatContentObsoleteFastThumb)
