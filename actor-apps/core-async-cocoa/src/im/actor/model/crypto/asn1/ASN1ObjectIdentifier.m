//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-crypto/src/main/java/im/actor/model/crypto/asn1/ASN1ObjectIdentifier.java
//


#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/crypto/asn1/ASN1ObjectIdentifier.h"
#include "im/actor/model/crypto/asn1/ASN1Primitive.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "java/io/IOException.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"

@interface BCASN1ObjectIdentifier () {
 @public
  NSString *identifier_;
}

@end

J2OBJC_FIELD_SETTER(BCASN1ObjectIdentifier, identifier_, NSString *)

@implementation BCASN1ObjectIdentifier

+ (BCASN1ObjectIdentifier *)readObjectIdentifierWithBSDataInput:(BSDataInput *)dataInput {
  return BCASN1ObjectIdentifier_readObjectIdentifierWithBSDataInput_(dataInput);
}

- (instancetype)initWithNSString:(NSString *)identifier {
  BCASN1ObjectIdentifier_initWithNSString_(self, identifier);
  return self;
}

- (NSString *)getIdentifier {
  return identifier_;
}

- (void)serializeWithBSDataOutput:(BSDataOutput *)dataOutput {
  [((BSDataOutput *) nil_chk(dataOutput)) writeByteWithInt:BCASN1Primitive_TAG_OBJECT_IDENTIFIER];
  BSDataOutput *content = new_BSDataOutput_init();
  IOSObjectArray *items = [((NSString *) nil_chk(identifier_)) split:@"\\."];
  jint val1 = JavaLangInteger_parseIntWithNSString_(IOSObjectArray_Get(nil_chk(items), 0));
  jint val2 = JavaLangInteger_parseIntWithNSString_(IOSObjectArray_Get(items, 1));
  [content writeByteWithInt:val1 * 40 + val2];
  for (jint i = 2; i < items->size_; i++) {
    jlong value = JavaLangLong_parseLongWithNSString_(IOSObjectArray_Get(items, i));
    IOSByteArray *result = [IOSByteArray newArrayWithLength:9];
    jint pos = 8;
    *IOSByteArray_GetRef(result, pos) = (jbyte) ((jint) value & (jint) 0x7f);
    while (value >= (LShift64(1LL, 7))) {
      RShiftAssignLong(&value, 7);
      *IOSByteArray_GetRef(result, --pos) = (jbyte) (((jint) value & (jint) 0x7f) | (jint) 0x80);
    }
    [content writeBytesWithByteArray:result withInt:pos withInt:9 - pos];
  }
  IOSByteArray *contentV = [content toByteArray];
  [dataOutput writeASN1LengthWithInt:((IOSByteArray *) nil_chk(contentV))->size_];
  [dataOutput writeBytesWithByteArray:contentV withInt:0 withInt:contentV->size_];
}

@end

BCASN1ObjectIdentifier *BCASN1ObjectIdentifier_readObjectIdentifierWithBSDataInput_(BSDataInput *dataInput) {
  BCASN1ObjectIdentifier_initialize();
  NSString *res;
  jint firstByte = [((BSDataInput *) nil_chk(dataInput)) readByte];
  jlong firstValue = firstByte & (jint) 0x7F;
  if (firstValue < 40) {
    res = @"0";
  }
  else if (firstValue < 80) {
    res = JreStrcat("$J", @"1.", (firstValue - 40));
  }
  else {
    res = JreStrcat("$J", @"2.", (firstValue - 80));
  }
  jlong value = 0;
  while (![dataInput isEOF]) {
    jint b = [dataInput readByte];
    value += (b & (jint) 0x7f);
    if ((b & (jint) 0x80) == 0) {
      res = JreStrcat("$C", res, '.');
      res = JreStrcat("$J", res, value);
      value = 0;
    }
    else {
      LShiftAssignLong(&value, 7);
    }
  }
  return new_BCASN1ObjectIdentifier_initWithNSString_(res);
}

void BCASN1ObjectIdentifier_initWithNSString_(BCASN1ObjectIdentifier *self, NSString *identifier) {
  (void) BCASN1Primitive_init(self);
  self->identifier_ = identifier;
}

BCASN1ObjectIdentifier *new_BCASN1ObjectIdentifier_initWithNSString_(NSString *identifier) {
  BCASN1ObjectIdentifier *self = [BCASN1ObjectIdentifier alloc];
  BCASN1ObjectIdentifier_initWithNSString_(self, identifier);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BCASN1ObjectIdentifier)
