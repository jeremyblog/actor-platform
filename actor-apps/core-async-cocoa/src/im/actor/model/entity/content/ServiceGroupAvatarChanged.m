//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/entity/content/ServiceGroupAvatarChanged.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/api/Avatar.h"
#include "im/actor/model/api/Message.h"
#include "im/actor/model/api/ServiceEx.h"
#include "im/actor/model/api/ServiceExChangedAvatar.h"
#include "im/actor/model/api/ServiceMessage.h"
#include "im/actor/model/entity/Avatar.h"
#include "im/actor/model/entity/content/ServiceContent.h"
#include "im/actor/model/entity/content/ServiceGroupAvatarChanged.h"
#include "im/actor/model/entity/content/internal/ContentRemoteContainer.h"

@interface AMServiceGroupAvatarChanged () {
 @public
  AMAvatar *newAvatar_;
}

@end

J2OBJC_FIELD_SETTER(AMServiceGroupAvatarChanged, newAvatar_, AMAvatar *)

@implementation AMServiceGroupAvatarChanged

+ (AMServiceGroupAvatarChanged *)createWithAPAvatar:(APAvatar *)avatar {
  return AMServiceGroupAvatarChanged_createWithAPAvatar_(avatar);
}

- (instancetype)initWithImActorModelEntityContentInternalContentRemoteContainer:(ImActorModelEntityContentInternalContentRemoteContainer *)remoteContainer {
  AMServiceGroupAvatarChanged_initWithImActorModelEntityContentInternalContentRemoteContainer_(self, remoteContainer);
  return self;
}

- (AMAvatar *)getNewAvatar {
  return newAvatar_;
}

@end

AMServiceGroupAvatarChanged *AMServiceGroupAvatarChanged_createWithAPAvatar_(APAvatar *avatar) {
  AMServiceGroupAvatarChanged_initialize();
  return new_AMServiceGroupAvatarChanged_initWithImActorModelEntityContentInternalContentRemoteContainer_(new_ImActorModelEntityContentInternalContentRemoteContainer_initWithAPMessage_(new_APServiceMessage_initWithNSString_withAPServiceEx_(@"Avatar changed", new_APServiceExChangedAvatar_initWithAPAvatar_(avatar))));
}

void AMServiceGroupAvatarChanged_initWithImActorModelEntityContentInternalContentRemoteContainer_(AMServiceGroupAvatarChanged *self, ImActorModelEntityContentInternalContentRemoteContainer *remoteContainer) {
  (void) AMServiceContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(self, remoteContainer);
  APServiceMessage *serviceMessage = (APServiceMessage *) check_class_cast([((ImActorModelEntityContentInternalContentRemoteContainer *) nil_chk(remoteContainer)) getMessage], [APServiceMessage class]);
  APServiceExChangedAvatar *changedAvatar = ((APServiceExChangedAvatar *) check_class_cast([((APServiceMessage *) nil_chk(serviceMessage)) getExt], [APServiceExChangedAvatar class]));
  self->newAvatar_ = ([((APServiceExChangedAvatar *) nil_chk(changedAvatar)) getAvatar] != nil) ? new_AMAvatar_initWithAPAvatar_([changedAvatar getAvatar]) : nil;
}

AMServiceGroupAvatarChanged *new_AMServiceGroupAvatarChanged_initWithImActorModelEntityContentInternalContentRemoteContainer_(ImActorModelEntityContentInternalContentRemoteContainer *remoteContainer) {
  AMServiceGroupAvatarChanged *self = [AMServiceGroupAvatarChanged alloc];
  AMServiceGroupAvatarChanged_initWithImActorModelEntityContentInternalContentRemoteContainer_(self, remoteContainer);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMServiceGroupAvatarChanged)
