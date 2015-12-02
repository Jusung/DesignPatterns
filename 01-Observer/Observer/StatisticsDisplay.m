//
//  StatisticsDisplay.m
//  Observer
//
//  Created by Jusung Kye on 9/21/15.
//  Copyright © 2015 Jusung Kye. All rights reserved.
//

#import "StatisticsDisplay.h"

@implementation StatisticsDisplay

- (instancetype)initWithHealthData:(HealthData *)healthData {
    self = [super init];
    if (self) {
        _healthData = healthData;
        [healthData registerObserver:self];
    }
    return self;
}

- (void)update:(CGFloat)temperature bloodPressure:(NSUInteger)bloodPressure heartRate:(NSUInteger)heartRate {
    _temperature = temperature;
    _bloodPressure = bloodPressure;
    _heartRate = heartRate;
    [self display];
}

- (void)display {
    NSLog(@"Statistics : %0.1f degress, %ld mmHg and %ld bpm",_temperature * 2,_bloodPressure * 2,_heartRate * 2);
}

@end