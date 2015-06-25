//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/network/mtp/entity/Ping.java
//

#ifndef _MTPing_H_
#define _MTPing_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"

@class BSDataInput;
@class BSDataOutput;

#define MTPing_HEADER 1

@interface MTPing : MTProtoStruct

#pragma mark Public

- (instancetype)initWithBSDataInput:(BSDataInput *)stream;

- (instancetype)initWithLong:(jlong)randomId;

- (jlong)getRandomId;

- (NSString *)description;

#pragma mark Protected

- (jbyte)getHeader;

- (void)readBodyWithBSDataInput:(BSDataInput *)bs;

- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs;

@end

J2OBJC_EMPTY_STATIC_INIT(MTPing)

J2OBJC_STATIC_FIELD_GETTER(MTPing, HEADER, jbyte)

FOUNDATION_EXPORT void MTPing_initWithBSDataInput_(MTPing *self, BSDataInput *stream);

FOUNDATION_EXPORT MTPing *new_MTPing_initWithBSDataInput_(BSDataInput *stream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void MTPing_initWithLong_(MTPing *self, jlong randomId);

FOUNDATION_EXPORT MTPing *new_MTPing_initWithLong_(jlong randomId) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(MTPing)

typedef MTPing ImActorModelNetworkMtpEntityPing;

#endif // _MTPing_H_
