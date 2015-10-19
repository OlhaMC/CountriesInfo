//
//  AppDelegate.m
//  CountriesInfo
//
//  Created by Admin on 17.10.15.
//  Copyright (c) 2015 OlhaF. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    UINavigationController * navController = [[UINavigationController alloc] initWithRootViewController:self.window.rootViewController];
    self.window.rootViewController = navController;
    
    return YES;
}

@end
