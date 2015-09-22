//
//  HealthData.m
//  Observer
//
//  Created by Jusung Kye on 9/19/15.
//  Copyright © 2015 Jusung Kye. All rights reserved.
//

#import "HealthData.h"
#import "Observer.h"

@implementation HealthData

- (instancetype)init {
    self = [super init];
    if (self) {
        _observers = [NSMutableArray new];
    }
    return self;
}

- (void)registerObserver:(id)ob {
    [_observers addObject:ob];
}

- (void)removeObserver:(id)ob {
    [_observers removeObject:ob];
}

- (void)notifyObservsers {
    for (id observer in _observers) {
        if ([observer respondsToSelector:@selector(update:bloodPressure:heartRate:)]) {
            [observer update:_temperature bloodPressure:_bloodPressure heartRate:_heartRate];
        }
    }
}

- (void)measurementsChanged {
    [self notifyObservsers];
}

- (void)setMeasurements:(CGFloat)temperature bloodPressure:(NSUInteger)bloodPressure heartRate:(NSUInteger)heartRate {
    _temperature = temperature;
    _bloodPressure = bloodPressure;
    _heartRate = heartRate;
    [self measurementsChanged];
}

@end
