//
//  JJaJang.m
//  Decorator
//
//  Created by Jusung Kye on 12/2/15.
//  Copyright © 2015 Jusung Kye. All rights reserved.
//

#import "JJaJang.h"

@implementation JJaJang

- (instancetype)init {
    self = [super init];
    
    if (self) {
        _description = @"JJaJang DDuckBokE";
    }
    
    return self;
}

- (double)cost {
    return 4;
}

@end
