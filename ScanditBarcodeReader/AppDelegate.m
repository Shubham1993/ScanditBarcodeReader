//
//  AppDelegate.m
//  ScanditBarcodeReader
//
//  Created by Shubham on 01/05/17.
//  Copyright © 2017 Shubham. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSString *appKey = @"Aee6dlgdQiDbIHvhaAnUbu49buFLCauPrAURsixWpyCaXNy2lG9v7SBWkxgMQ2ko52ITMwdeLdg5Vp+VeweHMEBPKaH2YnGkDwLDXE9HWF28U8fo4mw/GPVHrlNXQYr3mV/pgvpNLKV/Pt/PucAn1BhoeDQo2qmjpRzUdlRpNFk1VP2DRV56u5rAHvCxmALDFYi79qjSUbqc1QXLz97MVQCME+HM2YQEtMbgIPMn4GzqT/QwewTTsgmkG76CqBqkAauJDdcyU+sjTNN2XalPmm/J+nNf4hH1YKncCZyLSeoSJi57M6jaIbObSq977X8bAfFNPeoAH94ZLR1gJYpstxNRT4U2+50SPdDOUWzvfvvqDxUSShP9a1wdMjQ1Z/KgYPyXokIFWPcGn14J74lw6k6v8b7voigqWst70hI0mQwFujJZhShlo/JuhpQFKcmqb2qBx/Mtz8SE5JyEll22luoEGJn5x5ORyinWx3vTfCr/0cEK+8eMd5IBVnJjqhLp0cf78vNAkzSPKjaz9JxMHXHZj6hdMtDOBlMeZKaO+XFaqdD+Y/5jpIKB0swHZl3ZnQXvBy699TzDmbNT9ZL00aroocOgf67K+cXWGnfavx8nfAO3MXZDWrZrHVe3ONZ/a2i9eU9Rkqr5flGrXMH/O7Wz32csRXPSBaRCZ7rUYdf5/m21vb2sFWSS9463jJr2W23h+tcHrHb3kY6prRzjIuzvZiwRWap5MY48c4mQykX+bCDU+eKvTdPxsRes/+CfExm59xAN+xW4DA0G/1uKlWefLx0ZXRYrRFjDS71iszQVFN1FG8Fq5hPK/Uo=";
    
     [SBSLicense setAppKey:appKey];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
