//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-async/src/main/java/im/actor/model/jvm/threads/JavaThreadLocal.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/jvm/threads/JavaThreadLocal.h"
#include "im/actor/model/util/ThreadLocalCompat.h"
#include "java/lang/ThreadLocal.h"

@interface ImActorModelJvmThreadsJavaThreadLocal () {
 @public
  JavaLangThreadLocal *tThreadLocal_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelJvmThreadsJavaThreadLocal, tThreadLocal_, JavaLangThreadLocal *)

@implementation ImActorModelJvmThreadsJavaThreadLocal

- (id)get {
  return [((JavaLangThreadLocal *) nil_chk(tThreadLocal_)) get];
}

- (void)setWithId:(id)v {
  [((JavaLangThreadLocal *) nil_chk(tThreadLocal_)) setWithId:v];
}

- (void)remove {
  [((JavaLangThreadLocal *) nil_chk(tThreadLocal_)) remove];
}

- (instancetype)init {
  ImActorModelJvmThreadsJavaThreadLocal_init(self);
  return self;
}

@end

void ImActorModelJvmThreadsJavaThreadLocal_init(ImActorModelJvmThreadsJavaThreadLocal *self) {
  (void) AMThreadLocalCompat_init(self);
  self->tThreadLocal_ = new_JavaLangThreadLocal_init();
}

ImActorModelJvmThreadsJavaThreadLocal *new_ImActorModelJvmThreadsJavaThreadLocal_init() {
  ImActorModelJvmThreadsJavaThreadLocal *self = [ImActorModelJvmThreadsJavaThreadLocal alloc];
  ImActorModelJvmThreadsJavaThreadLocal_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelJvmThreadsJavaThreadLocal)
