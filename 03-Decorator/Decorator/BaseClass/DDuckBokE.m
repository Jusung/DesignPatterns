//
//  DDuckBokE.m
//  Decorator
//
//  Created by Jusung Kye on 12/2/15.
//  Copyright © 2015 Jusung Kye. All rights reserved.
//

#import "DDuckBokE.h"

@implementation DDuckBokE

- (instancetype)init {
    self = [super init];
    
    if (self) {
        _description = @"Unkown DDuckBokE";
    }
    
    return self;
}

- (NSString *)getDescription {
    return _description;
}

- (double)cost {
    NSAssert(NO, @"This is an abstract method so should be overridden.");
    return 0;
}


@end
