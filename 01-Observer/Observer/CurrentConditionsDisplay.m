//
//  CurrentConditionsDisplay.m
//  Observer
//
//  Created by Jusung Kye on 9/21/15.
//  Copyright © 2015 Jusung Kye. All rights reserved.
//

#import "CurrentConditionsDisplay.h"

@implementation CurrentConditionsDisplay

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
    NSLog(@"Current conditions : %0.1f degress, %ld mmHg and %ld bpm",_temperature,_bloodPressure,_heartRate);
}

@end