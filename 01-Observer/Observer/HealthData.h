//
//  HealthData.h
//  Observer
//
//  Created by Jusung Kye on 9/19/15.
//  Copyright © 2015 Jusung Kye. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Subject.h"

@interface HealthData : NSObject <Subject> {
@private
    NSMutableArray *_observers;
    CGFloat _temperature;
    NSUInteger _bloodPressure;
    NSUInteger _heartRate;
}

- (void)registerObserver:(id)ob;
- (void)removeObserver:(id)ob;
- (void)setMeasurements:(CGFloat)temperature bloodPressure:(NSUInteger)bloodPressure heartRate:(NSUInteger)heartRate;

@end