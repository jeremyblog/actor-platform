//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-crypto/src/main/java/org/bouncycastle/math/field/GenericPolynomialExtensionField.java
//


#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/math/field/FiniteField.h"
#include "org/bouncycastle/math/field/GenericPolynomialExtensionField.h"
#include "org/bouncycastle/math/field/Polynomial.h"
#include "org/bouncycastle/util/Integers.h"

@implementation OrgBouncycastleMathFieldGenericPolynomialExtensionField

- (instancetype)initWithOrgBouncycastleMathFieldFiniteField:(id<OrgBouncycastleMathFieldFiniteField>)subfield
                     withOrgBouncycastleMathFieldPolynomial:(id<OrgBouncycastleMathFieldPolynomial>)polynomial {
  OrgBouncycastleMathFieldGenericPolynomialExtensionField_initWithOrgBouncycastleMathFieldFiniteField_withOrgBouncycastleMathFieldPolynomial_(self, subfield, polynomial);
  return self;
}

- (JavaMathBigInteger *)getCharacteristic {
  return [((id<OrgBouncycastleMathFieldFiniteField>) nil_chk(subfield_)) getCharacteristic];
}

- (jint)getDimension {
  return [((id<OrgBouncycastleMathFieldFiniteField>) nil_chk(subfield_)) getDimension] * [((id<OrgBouncycastleMathFieldPolynomial>) nil_chk(minimalPolynomial_)) getDegree];
}

- (id<OrgBouncycastleMathFieldFiniteField>)getSubfield {
  return subfield_;
}

- (jint)getDegree {
  return [((id<OrgBouncycastleMathFieldPolynomial>) nil_chk(minimalPolynomial_)) getDegree];
}

- (id<OrgBouncycastleMathFieldPolynomial>)getMinimalPolynomial {
  return minimalPolynomial_;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) {
    return YES;
  }
  if (!([obj isKindOfClass:[OrgBouncycastleMathFieldGenericPolynomialExtensionField class]])) {
    return NO;
  }
  OrgBouncycastleMathFieldGenericPolynomialExtensionField *other = (OrgBouncycastleMathFieldGenericPolynomialExtensionField *) check_class_cast(obj, [OrgBouncycastleMathFieldGenericPolynomialExtensionField class]);
  return [((id<OrgBouncycastleMathFieldFiniteField>) nil_chk(subfield_)) isEqual:((OrgBouncycastleMathFieldGenericPolynomialExtensionField *) nil_chk(other))->subfield_] && [((id<OrgBouncycastleMathFieldPolynomial>) nil_chk(minimalPolynomial_)) isEqual:other->minimalPolynomial_];
}

- (NSUInteger)hash {
  return ((jint) [((id<OrgBouncycastleMathFieldFiniteField>) nil_chk(subfield_)) hash]) ^ OrgBouncycastleUtilIntegers_rotateLeftWithInt_withInt_(((jint) [((id<OrgBouncycastleMathFieldPolynomial>) nil_chk(minimalPolynomial_)) hash]), 16);
}

@end

void OrgBouncycastleMathFieldGenericPolynomialExtensionField_initWithOrgBouncycastleMathFieldFiniteField_withOrgBouncycastleMathFieldPolynomial_(OrgBouncycastleMathFieldGenericPolynomialExtensionField *self, id<OrgBouncycastleMathFieldFiniteField> subfield, id<OrgBouncycastleMathFieldPolynomial> polynomial) {
  (void) NSObject_init(self);
  self->subfield_ = subfield;
  self->minimalPolynomial_ = polynomial;
}

OrgBouncycastleMathFieldGenericPolynomialExtensionField *new_OrgBouncycastleMathFieldGenericPolynomialExtensionField_initWithOrgBouncycastleMathFieldFiniteField_withOrgBouncycastleMathFieldPolynomial_(id<OrgBouncycastleMathFieldFiniteField> subfield, id<OrgBouncycastleMathFieldPolynomial> polynomial) {
  OrgBouncycastleMathFieldGenericPolynomialExtensionField *self = [OrgBouncycastleMathFieldGenericPolynomialExtensionField alloc];
  OrgBouncycastleMathFieldGenericPolynomialExtensionField_initWithOrgBouncycastleMathFieldFiniteField_withOrgBouncycastleMathFieldPolynomial_(self, subfield, polynomial);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathFieldGenericPolynomialExtensionField)
