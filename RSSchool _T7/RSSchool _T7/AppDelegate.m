//
//  AppDelegate.m
//  RSSchool _T7
//
//  Created by Alexandr Zuev on 4.07.21.
//

#import "AppDelegate.h"
#import "RootViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UIViewController *vc = [[RootViewController alloc] initWithNibName:@"RootViewController" bundle:nil];
    [window setRootViewController:vc];
    
    _window = window;
    [_window makeKeyAndVisible];
    
    return YES;
}


#pragma mark - UISceneSession lifecycle

@end
