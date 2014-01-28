//
//  RenDemoTestObserver.m
//  RenDemo
//
//  Created by Kevin Y. Kim on 1/27/14.
//  Copyright (c) 2014 kykim, inc. All rights reserved.
//

#ifdef COVERAGE

#import <XCTest/XCTest.h>

@interface RenDemoTestObserver : XCTestObserver

@end

@implementation RenDemoTestObserver

+ (void)load
{
    [[NSUserDefaults standardUserDefaults] setValue:@"XCTestLog,RenDemoTestObserver" forKey:XCTestObserverClassKey];
}

- (void)stopObserving
{
    [super stopObserving];
    UIApplication *application = [UIApplication sharedApplication];
    id <UIApplicationDelegate> delegate = [application delegate];
    [delegate applicationWillResignActive:application];
}

@end

#endif
