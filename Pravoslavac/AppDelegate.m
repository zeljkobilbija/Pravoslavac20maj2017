//
//  AppDelegate.m
//  Pravoslavac
//
//  Created by Zeljko Bilbija on 08/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import "AppDelegate.h"
#import "GodisnjiKalendar.h"
#import "Mesecnikalendar.h"
#import "DnevniKalendar.h"
#import "ViewController.h"
#import "Molitvenik.h"

@implementation AppDelegate

//@synthesize window = _window;
//@synthesize tabBar = _tabBar;
//@synthesize sada =_sada;

- (void)dealloc
{
    [_window release];
    [_tabBar release];
    
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    ViewController *danas = [[[ViewController alloc] initWithNibName:@"VievController" bundle:nil] autorelease];
    
    GodisnjiKalendar *godisnjiKalendar = [[[GodisnjiKalendar alloc] initWithNibName:@"GodisnjiKalendar" bundle:nil]autorelease];
        // Mesecnikalendar *mesecniKalendar = [[[Mesecnikalendar alloc] initWithNibName:@"MesecniKalendar" bundle:nil] autorelease];
        //DnevniKalendar *dnevniKalendar = [[[DnevniKalendar alloc] initWithNibName:@"DnevniKalendar" bundle:nil] autorelease];
    Molitvenik *molitve = [[[Molitvenik alloc] initWithNibName:@"Molitvenik" bundle:nil] autorelease];
    
    UINavigationController *navKalendar = [[UINavigationController alloc] init];

    navKalendar.navigationBar.barStyle = UIBarStyleBlackTranslucent;

    
    
    [navKalendar pushViewController:godisnjiKalendar animated:YES];
    
    UINavigationController *navMolitve = [[UINavigationController alloc] init];

    navMolitve.navigationBar.barStyle = UIBarStyleBlackTranslucent;    [navMolitve pushViewController:molitve animated:YES];
    
    NSArray *arayViewControllera = @[danas,navKalendar,navMolitve];
    [navKalendar release];
    [navMolitve release];
    
    self.window = [[[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds] autorelease];
    // Override point for customization after application launch.
    self.tabBar = [[[UITabBarController alloc] init]autorelease];
        //self.tabBar.tabBar.tintColor = [UIColor blackColor];

    UIDevice *dd = [UIDevice currentDevice];

    NSString *sistem = dd.systemVersion;
    NSLog(@"%@",sistem);

//    if ([sistem isEqualToString:@"7.0.0"]) {
//
//
//
//    }

    if (sistem.intValue >= (@"7.0.0").intValue) {
 self.tabBar.tabBar.barStyle = UIBarStyleBlack;
    }


/****************************************************************/


//    NSString *strr=nil;
//    NSCalendar *cc = [[NSCalendar alloc]initWithCalendarIdentifier:NSGregorianCalendar];
//    [cc setFirstWeekday:1];
//    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
//    [dateFormat setCalendar:cc];
//    [dateFormat setDateFormat:@"ee"];
//
//    strr = [dateFormat stringFromDate:self.sada];
//    int nazivDana= [strr intValue];
//
//
//
//    if (nazivDana == 7) {
//self.tabBar.tabBar.barTintColor = [UIColor redColor];
//    }else{
////        [self.dan setTextColor:[UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000]];
////        [self.datumNovi setTextColor:[UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000]];
//        self.tabBar.tabBar.barTintColor = [UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000];
//    }



/********************************************************************/








        //self.tabBar.tabBar.barTintColor = [UIColor redColor];


    self.tabBar.viewControllers = arayViewControllera;
    self.window.rootViewController = self.tabBar;
    
    [self.window addSubview:self.tabBar.view];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
    
//    NSDate *sada = [NSDate date];
//    
//    NSDate *lounchTime = [sada dateByAddingTimeInterval:30.0];

    
    
   
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     
     */
    
    

//    self.sada = [NSDate date];
//    NSDate *lounchTime = [self.sada dateByAddingTimeInterval:10.0];
//    UILocalNotification *localNotif = [[UILocalNotification alloc] init];
//    if (localNotif == nil)
//        return;
//    localNotif.fireDate = lounchTime;
//    
//    localNotif.alertBody = [NSString stringWithFormat:NSLocalizedString(@"%@ u roku od %i minute.", nil),
//                            @"Danas je crveno slovo, Bozicni post a i muzu trebas da skuvas kafu" , 2];
//    localNotif.alertAction = NSLocalizedString(@"Detalji", nil);
//    
//    localNotif.soundName = UILocalNotificationDefaultSoundName;
//        //localNotif.applicationIconBadgeNumber = 1;
//    [[UIApplication sharedApplication] scheduleLocalNotification:localNotif];
//    [localNotif release];






    
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
    
   // self.sada = [NSDate date];
  

}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */





}

//- (void)applicationWillTerminate:(UIApplication *)application
//{
//    /*
//     Called when the application is about to terminate.
//     Save data if appropriate.
//     See also applicationDidEnterBackground:.
//     */
//    [application registerForRemoteNotificationTypes:UIRemoteNotificationTypeBadge];
//    
//    
//    
//}

//- (void)scheduleLocalNotification:(UNNotificationReqest *)notification{
//
//    
//}

//- (void)scheduleLocalNotification:(UILocalNotification *)notification{
//    
//    
//}




//- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notificatio{
//    
//   
//    
//
//}



@end
