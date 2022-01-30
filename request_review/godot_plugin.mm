//
//  godot_plugin.m
//  request_review
//
//  Created by YamazakiAkio on 2022/01/30.
//

#import <Foundation/Foundation.h>

#import "request_review.h"
#import "core/engine.h"

RequestReview *plugin;

void godot_plugin_init() {
    NSLog(@"init RequestReview plugin");

    plugin = memnew(RequestReview);
    Engine::get_singleton()->add_singleton(Engine::Singleton("RequestReview", plugin));
}

void godot_plugin_deinit() {
    NSLog(@"deinit RequestReview plugin");
    
    if (plugin) {
       memdelete(plugin);
   }
}
