//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/mvvm/generics/AvatarValueModel.java
//

#ifndef _AMAvatarValueModel_H_
#define _AMAvatarValueModel_H_

#include "J2ObjC_header.h"
#include "im/actor/model/mvvm/ValueModel.h"

@class AMAvatar;

@interface AMAvatarValueModel : AMValueModel

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)name
                    withAMAvatar:(AMAvatar *)defaultValue;

- (AMAvatar *)get;

@end

J2OBJC_EMPTY_STATIC_INIT(AMAvatarValueModel)

FOUNDATION_EXPORT void AMAvatarValueModel_initWithNSString_withAMAvatar_(AMAvatarValueModel *self, NSString *name, AMAvatar *defaultValue);

FOUNDATION_EXPORT AMAvatarValueModel *new_AMAvatarValueModel_initWithNSString_withAMAvatar_(NSString *name, AMAvatar *defaultValue) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMAvatarValueModel)

typedef AMAvatarValueModel ImActorModelMvvmGenericsAvatarValueModel;

#endif // _AMAvatarValueModel_H_
