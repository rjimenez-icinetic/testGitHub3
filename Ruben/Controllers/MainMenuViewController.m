//
//  MainMenuViewController.m
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "ContactViewController.h"
#import "LstViewController.h"
#import "MainMenuViewController.h"
#import "ROLogoutBehavior.h"
#import "StoreCatalogScreen1ViewController.h"

@interface MainMenuViewController ()

@end

@implementation MainMenuViewController

- (instancetype)init {

    self = [super init];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad {

    [super viewDidLoad];

	StoreCatalogScreen1ViewController *tab1 = [StoreCatalogScreen1ViewController new];
	tab1.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Store Catalog" image:[UIImage imageNamed:@"DefaultMenuIcon.png"] tag:0]	;
 
	ContactViewController *tab2 = [ContactViewController new];
	tab2.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Contact" image:[UIImage imageNamed:@"DefaultMenuIcon.png"] tag:1]	;
 
	StoreCatalogScreen1ViewController *tab3 = [StoreCatalogScreen1ViewController new];
	tab3.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"List" image:[UIImage imageNamed:@"./public/img/nav-menu.png"] tag:2]	;
 
	[tab1.behaviors addObject:[ROLogoutBehavior behaviorViewController:tab1]];
	[tab2.behaviors addObject:[ROLogoutBehavior behaviorViewController:tab2]];
	[tab3.behaviors addObject:[ROLogoutBehavior behaviorViewController:tab3]];

	self.viewControllers = @[
		[[UINavigationController alloc] initWithRootViewController:tab1],
		[[UINavigationController alloc] initWithRootViewController:tab2],
		[[UINavigationController alloc] initWithRootViewController:tab3],
        
	];
		
     
}
@end

