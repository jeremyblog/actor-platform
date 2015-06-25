//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/network/mtp/entity/UnsentResponse.java
//

#ifndef _MTUnsentResponse_H_
#define _MTUnsentResponse_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"

@class BSDataInput;
@class BSDataOutput;

#define MTUnsentResponse_HEADER 8

@interface MTUnsentResponse : MTProtoStruct

#pragma mark Public

- (instancetype)initWithBSDataInput:(BSDataInput *)stream;

- (instancetype)initWithLong:(jlong)messageId
                    withLong:(jlong)responseMessageId
                     withInt:(jint)len;

- (jint)getLen;

- (jlong)getMessageId;

- (jlong)getResponseMessageId;

- (NSString *)description;

#pragma mark Protected

- (jbyte)getHeader;

- (void)readBodyWithBSDataInput:(BSDataInput *)bs;

- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs;

@end

J2OBJC_EMPTY_STATIC_INIT(MTUnsentResponse)

J2OBJC_STATIC_FIELD_GETTER(MTUnsentResponse, HEADER, jbyte)

FOUNDATION_EXPORT void MTUnsentResponse_initWithLong_withLong_withInt_(MTUnsentResponse *self, jlong messageId, jlong responseMessageId, jint len);

FOUNDATION_EXPORT MTUnsentResponse *new_MTUnsentResponse_initWithLong_withLong_withInt_(jlong messageId, jlong responseMessageId, jint len) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void MTUnsentResponse_initWithBSDataInput_(MTUnsentResponse *self, BSDataInput *stream);

FOUNDATION_EXPORT MTUnsentResponse *new_MTUnsentResponse_initWithBSDataInput_(BSDataInput *stream) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(MTUnsentResponse)

typedef MTUnsentResponse ImActorModelNetworkMtpEntityUnsentResponse;

#endif // _MTUnsentResponse_H_
