//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/droidkit/actors/mailbox/MailboxesQueue.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/dispatch/AbstractDispatchQueue.h"
#include "im/actor/model/droidkit/actors/dispatch/DispatchResult.h"
#include "im/actor/model/droidkit/actors/mailbox/Envelope.h"
#include "im/actor/model/droidkit/actors/mailbox/Mailbox.h"
#include "im/actor/model/droidkit/actors/mailbox/MailboxesQueue.h"
#include "im/actor/model/droidkit/actors/mailbox/collections/EnvelopeCollection.h"
#include "im/actor/model/droidkit/actors/mailbox/collections/EnvelopeRoot.h"

@interface DKMailboxesQueue () {
 @public
  ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *envelopeRoot_;
}

@end

J2OBJC_FIELD_SETTER(DKMailboxesQueue, envelopeRoot_, ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *)

@implementation DKMailboxesQueue

- (instancetype)init {
  DKMailboxesQueue_init(self);
  return self;
}

- (ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *)getEnvelopeRoot {
  return envelopeRoot_;
}

- (void)unlockMailboxWithDKMailbox:(DKMailbox *)mailbox {
  [((ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *) nil_chk(envelopeRoot_)) attachCollectionWithImActorModelDroidkitActorsMailboxCollectionsEnvelopeCollection:[((DKMailbox *) nil_chk(mailbox)) getEnvelopes]];
}

- (void)disconnectMailboxWithDKMailbox:(DKMailbox *)mailbox {
  [((ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *) nil_chk(envelopeRoot_)) detachCollectionWithImActorModelDroidkitActorsMailboxCollectionsEnvelopeCollection:[((DKMailbox *) nil_chk(mailbox)) getEnvelopes]];
}

- (void)notifyQueueChanged {
  [super notifyQueueChanged];
}

- (DKDispatchResult *)dispatchWithLong:(jlong)time {
  ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *res = [((ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *) nil_chk(envelopeRoot_)) fetchCollectionWithLong:time];
  if (res == nil) {
    return [self delayWithLong:DKAbstractDispatchQueue_FOREVER];
  }
  if ([((ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *) nil_chk(res)) getEnvelope] != nil) {
    DKDispatchResult *result = [self resultWithId:[res getEnvelope]];
    [res recycle];
    return result;
  }
  else {
    DKDispatchResult *result = [self delayWithLong:[res getDelay]];
    [res recycle];
    return result;
  }
}

@end

void DKMailboxesQueue_init(DKMailboxesQueue *self) {
  (void) DKAbstractDispatchQueue_init(self);
  self->envelopeRoot_ = new_ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_initWithDKMailboxesQueue_(self);
}

DKMailboxesQueue *new_DKMailboxesQueue_init() {
  DKMailboxesQueue *self = [DKMailboxesQueue alloc];
  DKMailboxesQueue_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKMailboxesQueue)
