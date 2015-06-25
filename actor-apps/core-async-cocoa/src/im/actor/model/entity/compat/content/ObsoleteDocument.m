//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/entity/compat/content/ObsoleteDocument.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/DocumentMessage.h"
#include "im/actor/model/api/FastThumb.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/compat/ObsoleteFileReference.h"
#include "im/actor/model/entity/compat/content/ObsoleteDocument.h"
#include "im/actor/model/entity/compat/content/ObsoleteFastThumb.h"
#include "im/actor/model/entity/compat/content/ObsoleteFileSource.h"
#include "im/actor/model/entity/compat/content/ObsoleteLocalFileSource.h"
#include "im/actor/model/entity/compat/content/ObsoleteRemoteFileSource.h"
#include "im/actor/model/entity/content/internal/AbsContentContainer.h"
#include "im/actor/model/entity/content/internal/ContentLocalContainer.h"
#include "im/actor/model/entity/content/internal/ContentRemoteContainer.h"
#include "im/actor/model/entity/content/internal/LocalDocument.h"
#include "im/actor/model/entity/content/internal/LocalFastThumb.h"
#include "java/io/IOException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/UnsupportedOperationException.h"

@implementation ImActorModelEntityCompatContentObsoleteDocument

- (instancetype)initWithBSBserValues:(BSBserValues *)values {
  ImActorModelEntityCompatContentObsoleteDocument_initWithBSBserValues_(self, values);
  return self;
}

- (ImActorModelEntityContentInternalAbsContentContainer *)toContainer {
  if ([source_ isKindOfClass:[ImActorModelEntityCompatContentObsoleteLocalFileSource class]]) {
    ImActorModelEntityCompatContentObsoleteLocalFileSource *fSource = (ImActorModelEntityCompatContentObsoleteLocalFileSource *) check_class_cast(source_, [ImActorModelEntityCompatContentObsoleteLocalFileSource class]);
    return new_ImActorModelEntityContentInternalContentLocalContainer_initWithImActorModelEntityContentInternalAbsLocalContent_(new_ImActorModelEntityContentInternalLocalDocument_initWithNSString_withNSString_withInt_withNSString_withImActorModelEntityContentInternalLocalFastThumb_(name_, [((ImActorModelEntityCompatContentObsoleteLocalFileSource *) nil_chk(fSource)) getFileDescriptor], [fSource getSize], mimeType_, fastThumb_ != nil ? [fastThumb_ toFastThumb] : nil));
  }
  else if ([source_ isKindOfClass:[ImActorModelEntityCompatContentObsoleteRemoteFileSource class]]) {
    ImActorModelEntityCompatContentObsoleteRemoteFileSource *fSource = (ImActorModelEntityCompatContentObsoleteRemoteFileSource *) check_class_cast(source_, [ImActorModelEntityCompatContentObsoleteRemoteFileSource class]);
    return new_ImActorModelEntityContentInternalContentRemoteContainer_initWithAPMessage_(new_APDocumentMessage_initWithLong_withLong_withInt_withNSString_withNSString_withAPFastThumb_withAPDocumentEx_([((ImActorModelEntityCompatObsoleteFileReference *) nil_chk([((ImActorModelEntityCompatContentObsoleteRemoteFileSource *) nil_chk(fSource)) getFileReference])) getFileId], [((ImActorModelEntityCompatObsoleteFileReference *) nil_chk([fSource getFileReference])) getAccessHash], [((ImActorModelEntityCompatObsoleteFileReference *) nil_chk([fSource getFileReference])) getFileSize], name_, mimeType_, fastThumb_ != nil ? [fastThumb_ toApiFastThumb] : nil, nil));
  }
  else {
    @throw new_JavaLangRuntimeException_initWithNSString_(@"Unknwon source type");
  }
}

- (ImActorModelEntityCompatContentObsoleteFileSource *)getSource {
  return source_;
}

- (NSString *)getMimeType {
  return mimeType_;
}

- (NSString *)getName {
  return name_;
}

- (ImActorModelEntityCompatContentObsoleteFastThumb *)getFastThumb {
  return fastThumb_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  source_ = ImActorModelEntityCompatContentObsoleteFileSource_fromBytesWithByteArray_([((BSBserValues *) nil_chk(values)) getBytesWithInt:2]);
  mimeType_ = [values getStringWithInt:3];
  name_ = [values getStringWithInt:4];
  IOSByteArray *ft = [values optBytesWithInt:5];
  if (ft != nil) {
    fastThumb_ = new_ImActorModelEntityCompatContentObsoleteFastThumb_initWithByteArray_(ft);
  }
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  @throw new_JavaLangUnsupportedOperationException_init();
}

@end

void ImActorModelEntityCompatContentObsoleteDocument_initWithBSBserValues_(ImActorModelEntityCompatContentObsoleteDocument *self, BSBserValues *values) {
  (void) BSBserObject_init(self);
  [self parseWithBSBserValues:values];
}

ImActorModelEntityCompatContentObsoleteDocument *new_ImActorModelEntityCompatContentObsoleteDocument_initWithBSBserValues_(BSBserValues *values) {
  ImActorModelEntityCompatContentObsoleteDocument *self = [ImActorModelEntityCompatContentObsoleteDocument alloc];
  ImActorModelEntityCompatContentObsoleteDocument_initWithBSBserValues_(self, values);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelEntityCompatContentObsoleteDocument)
