# Godot request review plugin for iOS
This is a plugin for Godot that calls requestReview on [iOS](https://developer.apple.com/documentation/storekit/skstorereviewcontroller/3566727-requestreview).

## Instructions
Clone this repository and it's submodules:
```
git clone --recurse-submodules git@github.com:funseek/godot-ios-request-review.git
```

To generate Godot headers you need to run compilation command inside godot submodule directory.   
Example:
```
./scripts/generate_headers.sh
```

Building a .a library
```
./scripts/release_static_library.sh 3.4
```

Copy a.library to Godot plugin directory
```
cp bin/release/request_review/request_review.*.a $GODOT_HOME/ios/plugins/request_review/bin/
cp request_review.gdip $GODOT_HOME/ios/plugins/
```

Calling plugin in Godot
```godot
if Engine.has_singleton("RequestReview"):
		var singleton = Engine.get_singleton("RequestReview")
		singleton.requestReview()
```

## Reference
https://github.com/godotengine/godot-ios-plugins  
https://github.com/naithar/godot_ios_plugin

## License
MIT
