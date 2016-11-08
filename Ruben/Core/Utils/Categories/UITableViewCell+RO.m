//
//  UITableViewCell+RO.m
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "UITableViewCell+RO.h"
#import "ROStyle.h"
#import "UIImage+RO.h"

@implementation UITableViewCell (RO)

- (void)ro_configureSelectedView
{
    UIView *selectecedView = [[UIView alloc] init];
    selectecedView.backgroundColor = [[[ROStyle sharedInstance] accentColor] colorWithAlphaComponent:0.1f];
    self.selectedBackgroundView = selectecedView;
}

- (void)ro_configureAction:(NSObject<ROAction> *)action
{
    self.userInteractionEnabled = NO;
    self.accessoryType = UITableViewCellAccessoryNone;
    self.accessoryView = nil;
    if (action && [action canDoAction]) {
        self.userInteractionEnabled = YES;
        UIImage *image = [[UIImage imageNamed:@"arrow"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        if ([action actionIcon]) {
            image = [[action actionIcon] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        }
        UIImageView *iconImageView = [[UIImageView alloc] initWithImage:image];
        [iconImageView setTintColor:[[ROStyle sharedInstance] accentColor]];
        self.accessoryView = iconImageView;
    }
}

@end
