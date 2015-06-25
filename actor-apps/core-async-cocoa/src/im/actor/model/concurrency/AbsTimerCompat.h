//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/concurrency/AbsTimerCompat.java
//

#ifndef _AMAbsTimerCompat_H_
#define _AMAbsTimerCompat_H_

#include "J2ObjC_header.h"

@protocol JavaLangRunnable;

@interface AMAbsTimerCompat : NSObject

#pragma mark Public

- (instancetype)initWithJavaLangRunnable:(id<JavaLangRunnable>)runnable;

- (void)cancel;

- (void)scheduleWithLong:(jlong)delay;

#pragma mark Protected

- (void)invokeRun;

@end

J2OBJC_EMPTY_STATIC_INIT(AMAbsTimerCompat)

FOUNDATION_EXPORT void AMAbsTimerCompat_initWithJavaLangRunnable_(AMAbsTimerCompat *self, id<JavaLangRunnable> runnable);

J2OBJC_TYPE_LITERAL_HEADER(AMAbsTimerCompat)

typedef AMAbsTimerCompat ImActorModelConcurrencyAbsTimerCompat;

#endif // _AMAbsTimerCompat_H_
