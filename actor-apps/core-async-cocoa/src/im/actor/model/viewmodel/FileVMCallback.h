//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/viewmodel/FileVMCallback.java
//

#ifndef _AMFileVMCallback_H_
#define _AMFileVMCallback_H_

#include "J2ObjC_header.h"

@protocol AMFileSystemReference;

@protocol AMFileVMCallback < NSObject, JavaObject >

- (void)onNotDownloaded;

- (void)onDownloading:(jfloat)progress;

- (void)onDownloaded:(id<AMFileSystemReference>)reference;

@end

J2OBJC_EMPTY_STATIC_INIT(AMFileVMCallback)

J2OBJC_TYPE_LITERAL_HEADER(AMFileVMCallback)

#define ImActorModelViewmodelFileVMCallback AMFileVMCallback

#endif // _AMFileVMCallback_H_
