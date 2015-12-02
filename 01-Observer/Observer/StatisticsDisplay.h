//
//  StatisticsDisplay.h
//  Observer
//
//  Created by Jusung Kye on 9/21/15.
//  Copyright © 2015 Jusung Kye. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"
#import "DisplayElement.h"
#import "HealthData.h"

@interface StatisticsDisplay : NSObject <Observer, DisplayElement> {
@private
    CGFloat _temperature;
    NSUInteger _bloodPressure;
    NSUInteger _heartRate;
    HealthData *_healthData;
}

- (instancetype)initWithHealthData:(HealthData *)healthData;
- (void)update:(CGFloat)temperature bloodPressure:(NSUInteger)bloodPressure heartRate:(NSUInteger)heartRate;

@end