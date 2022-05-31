//
//  godot_plugin.m
//  request_review
//
//  Created by YamazakiAkio on 2022/01/30.
//

#import <Foundation/Foundation.h>

#import "request_review.h"
#import "core/engine.h"

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
