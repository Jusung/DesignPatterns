//
//  Odeng.m
//  Decorator
//
//  Created by Jusung Kye on 12/2/15.
//  Copyright © 2015 Jusung Kye. All rights reserved.
//

#import "Odeng.h"

@implementation Odeng

- (instancetype)initWithDDuckBokE:(DDuckBokE *)dduckBokE {
    self = [super init];
    
    if (self) {
        _dduckBokE = dduckBokE;
    }
    
    return self;
}

- (NSString *)getDescription {
    return [NSString stringWithFormat:@"%@%@",_dduckBokE.getDescription,@", Odeng"];
}

- (double)cost {
    return 2 + _dduckBokE.cost;
}

@end
