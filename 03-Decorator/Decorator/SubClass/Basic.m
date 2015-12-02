//
//  Basic.m
//  Decorator
//
//  Created by Jusung Kye on 12/2/15.
//  Copyright © 2015 Jusung Kye. All rights reserved.
//

#import "Basic.h"

@implementation Basic

- (instancetype)init {
    self = [super init];
    
    if (self) {
        _description = @"Basic DDuckBokE";
    }
    
    return self;
}

- (double)cost {
    return 3;
}

@end
