//
//  ForeCastDisplay.m
//  Observer
//
//  Created by Jusung Kye on 9/21/15.
//  Copyright © 2015 Jusung Kye. All rights reserved.
//

#import "ForeCastDisplay.h"

@implementation ForeCastDisplay

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
    NSLog(@"ForeCast : %0.1f degress, %ld mmHg and %ld bpm",_temperature * 3,_bloodPressure * 3,_heartRate * 3);
}

@end