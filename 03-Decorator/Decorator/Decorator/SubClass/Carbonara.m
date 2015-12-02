//
//  Carbonara.m
//  Decorator
//
//  Created by Jusung Kye on 12/2/15.
//  Copyright © 2015 Jusung Kye. All rights reserved.
//

#import "Carbonara.h"

@implementation Carbonara

- (instancetype)init {
    self = [super init];
    
    if (self) {
        _description = @"Carbonara DDuckBokE";
    }
    
    return self;
}

- (double)cost {
    return 5;
}

@end
