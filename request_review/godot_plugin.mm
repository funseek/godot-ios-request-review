//
//  godot_plugin.m
//  request_review
//
//  Created by YamazakiAkio on 2022/01/30.
//

#import <Foundation/Foundation.h>

#include "core/version.h"

#import "request_review.h"
#if VERSION_MAJOR == 4
#include "core/config/engine.h"
#else
#include "core/engine.h"
#endif

RequestReview *request_review_plugin;

void godot_plugin_init() {
    NSLog(@"init RequestReview plugin");

    request_review_plugin = memnew(RequestReview);
    Engine::get_singleton()->add_singleton(Engine::Singleton("RequestReview", request_review_plugin));
}

void godot_plugin_deinit() {
    NSLog(@"deinit RequestReview plugin");
    
    if (request_review_plugin) {
       memdelete(request_review_plugin);
   }
}
