
#import "AppDelegate.h"
#import "GodisnjiKalendar.h"
#import "Mesecnikalendar.h"
#import "DnevniKalendar.h"
#import "ViewController.h"
#import "Molitvenik.h"

@implementation AppDelegate

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
    self.tabBar = [[[UITabBarController alloc] init]autorelease];
    UIDevice *dd = [UIDevice currentDevice];

    NSString *sistem = dd.systemVersion;
    NSLog(@"%@",sistem);

    if (sistem.intValue >= (@"7.0.0").intValue) {
 self.tabBar.tabBar.barStyle = UIBarStyleBlack;
    }


    self.tabBar.viewControllers = arayViewControllera;
    self.window.rootViewController = self.tabBar;
    
    [self.window addSubview:self.tabBar.view];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
 
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{

}

- (void)applicationDidBecomeActive:(UIApplication *)application
{

}

@end
