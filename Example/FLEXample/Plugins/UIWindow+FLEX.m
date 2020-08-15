//
//  UIWindow+FLEX.m
//  FLEX
//
//  Created by linzuhan on 2020/8/15.
//

#import "UIWindow+FLEX.h"
#import <FLEX/FLEX.h>

@implementation UIWindow (FLEX)

#if DEBUG
- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    [super motionBegan:motion withEvent:event];
    
    if (motion == UIEventSubtypeMotionShake) {
        [[FLEXManager sharedManager] showExplorer];
    }
}
#endif

@end
