//
//  MainNavigationManager.m
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//
#import "MainMenuViewController.h"
#import "MainNavigationManager.h"
#import "ROBasicAuthLoginService.h"
#import "ROLoginManager.h"
#import "ROLoginViewController.h"
#import "ROStyle.h"
#import "StoreCatalogScreen1ViewController.h"
#import "UIViewController+RO.h"
#import "UIViewController+Sliding.h"

@interface MainNavigationManager ()

@property (nonatomic, strong) ROLoginViewController *loginViewController;

@end

@implementation MainNavigationManager

+ (instancetype)sharedInstance {

    static id _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] init];
    });

    return _sharedInstance;
}

- (instancetype)init {

    self = [super init];
    if (self) {

        _loginEnabled = YES;
    }

    return self;
}

- (UIViewController *)rootViewController {

    UIViewController *viewController;

    if (self.loginEnabled) {

        viewController = self.loginViewController;

    } else {

        viewController = self.mainViewController;
    }

    return viewController;
}
- (UIViewController *)mainViewController {

    if (!_mainViewController) {

        _mainViewController = [MainMenuViewController new];
    }

    return _mainViewController;
}

- (ROLoginViewController *)loginViewController {

    if (!_loginViewController && self.loginEnabled) {

        _loginViewController = [ROLoginViewController new];

        _loginViewController.loginService = [[ROBasicAuthLoginService alloc] initWithBaseUrl:@"https://appbuilder-devel.buildup.io/api/app"
                                                                                       appId:@"92f7c6c5-06f3-4207-b608-a04e5046a0ef"];
        __weak typeof(self) weakSelf = self;
        [_loginViewController setOnSuccessBlock:^{

            UIViewController *presentViewController = weakSelf.mainViewController;
            presentViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [weakSelf.loginViewController presentViewController:presentViewController
                                                       animated:NO
                                                     completion:nil];


        } onFailureBlock:^{

        }];

    }

    return _loginViewController;
}

- (void)enterBackground {

    // save last active state
    if ([self loginEnabled]) {

        [[ROLoginManager sharedInstance] saveLastSuspendDate];
    }
}

- (void)enterForeground {

    // check login status and redirect if needed
    if ([self loginEnabled]) {

        __weak typeof(self) weakSelf = self;
        [[ROLoginManager sharedInstance] checkLoginStateAndRedirect:^{

            [weakSelf.loginViewController reset];
            [weakSelf.loginViewController ro_dismissAllControllers];

        }];
    }
}

- (void)terminate {

    if ([self loginEnabled]) {

        [[ROLoginManager sharedInstance] resetLoginState];
    }
}

- (void)logout {

    if ([self loginEnabled]) {

        [self.loginViewController reset];
        
        __weak typeof(self) weakSelf = self;
        [self.mainViewController dismissViewControllerAnimated:YES completion:^{
           
            weakSelf.mainViewController = nil;
        }];
    }
}
@end

