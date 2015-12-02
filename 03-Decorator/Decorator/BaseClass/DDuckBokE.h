//
//  DDuckBokE.h
//  Decorator
//
//  Created by Jusung Kye on 12/2/15.
//  Copyright © 2015 Jusung Kye. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DDuckBokE : NSObject {
    NSString *_description;
}

- (NSString *)getDescription;
- (double)cost;

@end