//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/util/ThreadLocalCompat.java
//

#ifndef _AMThreadLocalCompat_H_
#define _AMThreadLocalCompat_H_

#include "J2ObjC_header.h"

@interface AMThreadLocalCompat : NSObject

#pragma mark Public

- (instancetype)init;

- (id)get;

- (void)remove;

- (void)setWithId:(id)v;

@end

J2OBJC_EMPTY_STATIC_INIT(AMThreadLocalCompat)

FOUNDATION_EXPORT void AMThreadLocalCompat_init(AMThreadLocalCompat *self);

J2OBJC_TYPE_LITERAL_HEADER(AMThreadLocalCompat)

typedef AMThreadLocalCompat ImActorModelUtilThreadLocalCompat;

#endif // _AMThreadLocalCompat_H_
