//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/mvvm/generics/UserPresenceValueModel.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/mvvm/ValueModel.h"
#include "im/actor/model/mvvm/generics/UserPresenceValueModel.h"
#include "im/actor/model/viewmodel/UserPresence.h"

@implementation AMUserPresenceValueModel

- (instancetype)initWithNSString:(NSString *)name
              withAMUserPresence:(AMUserPresence *)defaultValue {
  AMUserPresenceValueModel_initWithNSString_withAMUserPresence_(self, name, defaultValue);
  return self;
}

- (AMUserPresence *)get {
  return [super get];
}

@end

void AMUserPresenceValueModel_initWithNSString_withAMUserPresence_(AMUserPresenceValueModel *self, NSString *name, AMUserPresence *defaultValue) {
  (void) AMValueModel_initWithName_withValue_(self, name, defaultValue);
}

AMUserPresenceValueModel *new_AMUserPresenceValueModel_initWithNSString_withAMUserPresence_(NSString *name, AMUserPresence *defaultValue) {
  AMUserPresenceValueModel *self = [AMUserPresenceValueModel alloc];
  AMUserPresenceValueModel_initWithNSString_withAMUserPresence_(self, name, defaultValue);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMUserPresenceValueModel)
