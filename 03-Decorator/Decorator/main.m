//
//  main.m
//  Decorator
//
//  Created by Jusung Kye on 12/2/15.
//  Copyright © 2015 Jusung Kye. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDuckBokE.h"

#import "Basic.h"
#import "Carbonara.h"
#import "Curry.h"
#import "JJaJang.h"

#import "SariDecorator.h"

#import "Mandoo.h"
#import "Odeng.h"
#import "Ramyun.h"
#import "Vegetable.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        DDuckBokE *dduckBokE = [Carbonara new];
        NSLog(@"%@ $%0.2f",dduckBokE.getDescription,dduckBokE.cost);
        
        DDuckBokE *dduckBokE2 = [Basic new];
        dduckBokE2 = [[Mandoo alloc] initWithDDuckBokE:dduckBokE2];
        dduckBokE2 = [[Odeng alloc] initWithDDuckBokE:dduckBokE2];
        dduckBokE2 = [[Ramyun alloc] initWithDDuckBokE:dduckBokE2];
        NSLog(@"%@ $%0.2f",dduckBokE2.getDescription,dduckBokE2.cost);
        
        DDuckBokE *dduckBokE3 = [JJaJang new];
        dduckBokE3 = [[Mandoo alloc] initWithDDuckBokE:dduckBokE3];
        dduckBokE3 = [[Vegetable alloc] initWithDDuckBokE:dduckBokE3];
        dduckBokE3 = [[Ramyun alloc] initWithDDuckBokE:dduckBokE3];
        NSLog(@"%@ $%0.2f",dduckBokE3.getDescription,dduckBokE3.cost);
    }
    
    return 0;
}
