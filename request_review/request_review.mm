//
//  request_review.m
//  request_review
//
//  Created by YamazakiAkio on 2022/01/30.
//

#include "core/version.h"

#if VERSION_MAJOR == 4
#include "core/object/class_db.h"
#include "core/config/project_settings.h"
#else
#include "core/project_settings.h"
#include "core/class_db.h"
#endif

#import <StoreKit/StoreKit.h>
#import "request_review.h"

void RequestReview::_bind_methods() {
    ClassDB::bind_method(D_METHOD("requestReview"), &RequestReview::requestReview);
}

void RequestReview::requestReview() {
    NSLog(@"requestReview");
    
    UIScene *scene = [[[[UIApplication sharedApplication] connectedScenes] allObjects] firstObject];
    if ([scene isKindOfClass:[UIWindowScene class]]) {
        [SKStoreReviewController requestReviewInScene: (UIWindowScene*) scene];
    }
}

RequestReview::RequestReview() {
    NSLog(@"initialize RequestReview");
}

RequestReview::~RequestReview() {
    NSLog(@"deinitialize RequestReview");
}
