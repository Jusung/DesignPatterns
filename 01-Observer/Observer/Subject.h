//
//  Subject.h
//  Observer
//
//  Created by Jusung Kye on 9/19/15.
//  Copyright © 2015 Jusung Kye. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Subject <NSObject>

- (void) registerObserver:(id)ob;
- (void) removeObserver:(id)ob;
- (void) notifyObservsers;

@end