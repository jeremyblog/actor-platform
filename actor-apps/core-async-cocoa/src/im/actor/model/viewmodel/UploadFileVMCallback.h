//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/viewmodel/UploadFileVMCallback.java
//

#ifndef _AMUploadFileVMCallback_H_
#define _AMUploadFileVMCallback_H_

#include "J2ObjC_header.h"

@protocol AMUploadFileVMCallback < NSObject, JavaObject >

- (void)onNotUploaded;

- (void)onUploading:(jfloat)progress;

- (void)onUploaded;

@end

J2OBJC_EMPTY_STATIC_INIT(AMUploadFileVMCallback)

J2OBJC_TYPE_LITERAL_HEADER(AMUploadFileVMCallback)

#define ImActorModelViewmodelUploadFileVMCallback AMUploadFileVMCallback

#endif // _AMUploadFileVMCallback_H_
