//
//  Observer.h
//  Observer
//
//  Created by Jusung Kye on 9/21/15.
//  Copyright © 2015 Jusung Kye. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Observer <NSObject>

- (void)update:(CGFloat)temperature bloodPressure:(NSUInteger)bloodPressure heartRate:(NSUInteger)heartRate;

@end