//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-async/src/main/java/im/actor/model/cocoa/CocoaThreadingProvider.java
//

#ifndef _AMCocoaThreadingProvider_H_
#define _AMCocoaThreadingProvider_H_

#include "J2ObjC_header.h"
#include "im/actor/model/jvm/JavaThreadingProvider.h"

@interface AMCocoaThreadingProvider : AMJavaThreadingProvider

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(AMCocoaThreadingProvider)

FOUNDATION_EXPORT void AMCocoaThreadingProvider_init(AMCocoaThreadingProvider *self);

FOUNDATION_EXPORT AMCocoaThreadingProvider *new_AMCocoaThreadingProvider_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMCocoaThreadingProvider)

typedef AMCocoaThreadingProvider ImActorModelCocoaCocoaThreadingProvider;

#endif // _AMCocoaThreadingProvider_H_
