//
//  main.m
//  Observer
//
//  Created by Jusung Kye on 9/19/15.
//  Copyright © 2015 Jusung Kye. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HealthData.h"
#import "CurrentConditionsDisplay.h"
#import "StatisticsDisplay.h"
#import "ForeCastDisplay.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        HealthData *healthData = [HealthData new];
        CurrentConditionsDisplay *currentConditionsDisplay = [[CurrentConditionsDisplay alloc] initWithHealthData:healthData];
        StatisticsDisplay *statisticsDisplay = [[StatisticsDisplay alloc] initWithHealthData:healthData];
        ForeCastDisplay *foreCastDisplay = [[ForeCastDisplay alloc] initWithHealthData:healthData];
        
        [healthData setMeasurements:36.5 bloodPressure:100 heartRate:120];
        NSLog(@"---------------------------------------------------------");
        [healthData removeObserver:statisticsDisplay]; //분석 옵저버를 제거
        [healthData setMeasurements:36.4 bloodPressure:110 heartRate:110];
        NSLog(@"---------------------------------------------------------");
        [healthData setMeasurements:36.3 bloodPressure:109 heartRate:111];
    }
    return 0;
}
