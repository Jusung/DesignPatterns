//
//  Vegetable.h
//  Decorator
//
//  Created by Jusung Kye on 12/2/15.
//  Copyright © 2015 Jusung Kye. All rights reserved.
//

#import "SariDecorator.h"

@interface Vegetable : SariDecorator {
    DDuckBokE *_dduckBokE;
}

- (instancetype)initWithDDuckBokE:(DDuckBokE *)dduckBokE;

@end