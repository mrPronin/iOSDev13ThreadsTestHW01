//
//  RITAppDelegate.m
//  13ThreadsTestHW01
//
//  Created by Aleksandr Pronin on 11.02.14.
//  Copyright (c) 2014 Aleksandr Pronin. All rights reserved.
//

#import "RITAppDelegate.h"
#import "RITStudent.h"

@implementation RITAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    RITStudent* student01   = [[RITStudent alloc] init];
    RITStudent* student02   = [[RITStudent alloc] init];
    RITStudent* student03   = [[RITStudent alloc] init];
    RITStudent* student04   = [[RITStudent alloc] init];
    RITStudent* student05   = [[RITStudent alloc] init];
    
    student01.name          = @"Student01";
    student02.name          = @"Student02";
    student03.name          = @"Student03";
    student04.name          = @"Student04";
    student05.name          = @"Student05";
    
    [student01 guessTheAnswer:33 withRangeFromLeft:0 toRight:100000000];
    [student02 guessTheAnswer:33 withRangeFromLeft:0 toRight:100000000];
    [student03 guessTheAnswer:33 withRangeFromLeft:0 toRight:100000000];
    [student04 guessTheAnswer:33 withRangeFromLeft:0 toRight:100000000];
    [student05 guessTheAnswer:33 withRangeFromLeft:0 toRight:100000000];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
