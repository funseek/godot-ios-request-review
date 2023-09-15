//
//  request_review.h
//  request_review
//
//  Created by YamazakiAkio on 2022/01/30.
//

#ifndef request_review_h
#define request_review_h

#if VERSION_MAJOR == 4
#include "core/object/class_db.h"
#else
#include "core/object.h"
#endif

class RequestReview : public Object {
    GDCLASS(RequestReview, Object);
    
    static void _bind_methods();
    
public:
    
    void requestReview();
    
    RequestReview();
    ~RequestReview();
};

#endif /* request_review_h */
