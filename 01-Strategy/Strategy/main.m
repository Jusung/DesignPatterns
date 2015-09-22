//
//  main.m
//  Strategy
//
//  Created by Jusung Kye on 9/22/15.
//  Copyright © 2015 Jusung Kye. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SportsCar.h"
#import "ModelCar.h"
#import "RcCar.h"
#import "MoveWithElectricity.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SportsCar *sportCar = [SportsCar new];
        ModelCar *modelCar = [ModelCar new];
        RcCar *rcCar = [RcCar new];
        
        NSLog(@"Simulate SportCar");
        [sportCar display];
        [sportCar performKlaxon];
        [sportCar performMove];
        
        sportCar.moveBehavior = [MoveWithElectricity new];
        [sportCar performMove];
        
        NSLog(@"\n");
        
        NSLog(@"Simulate ModelCar");
        [modelCar display];
        [modelCar performKlaxon];
        [modelCar performMove];
        NSLog(@"\n");
        
        NSLog(@"Simulate RcCar");
        [rcCar display];
        [rcCar performKlaxon];
        [rcCar performMove];
    }
    return 0;
}

